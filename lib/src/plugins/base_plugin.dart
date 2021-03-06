/*
 * This file is part of Sounds.
 *
 *   Sounds is free software: you can redistribute it and/or modify
 *   it under the terms of the Lesser GNU General Public License
 *   version 3 (LGPL3) as published by the Free Software Foundation.
 *
 *   Sounds is distributed in the hope that it will be useful,
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *   GNU General Public License for more details.
 *
 *   You should have received a copy of the Lesser GNU General Public License
 *   along with Sounds.  If not, see <https://www.gnu.org/licenses/>.
 */

import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:sounds_common/sounds_common.dart';

/// Used to describe any class that can be placed into a slot.
class SlotEntry {}

/// provides a set of common methods used by
/// PluginInterfaces to talk to the underlying
/// Platform specific plugin.
///
/// Each derived Plugin is a singleton via which
/// Players and Recorders register to talk
/// to the OS dependant plugins.
// ignore: prefer_mixin
abstract class BasePlugin with WidgetsBindingObserver {
  /// ignore: prefer_final_fields
  List<SlotEntry> _slots;

  ///
  @protected
  MethodChannel _channel;

  /// The registered name of the plugin.
  final String _registeredName;

  /// Pass in the [_registeredName] which is the registered
  /// name of the plugin.
  BasePlugin(this._registeredName, this._slots) {
    Log.d('registering plugin: $_registeredName');
    _channel = MethodChannel(_registeredName);
    _channel.setMethodCallHandler(_onMethodCallback);

    WidgetsBinding.instance.addObserver(this);
  }

  /// This method is currently not used as we are a singleton
  /// which has the same lifecycle as the app so there
  /// is no point in freeing this resource as we need
  /// these events until the app stops in which case it will
  /// be freed automatically.
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.resumed:
        onSystemAppResumed();
        break;
      case AppLifecycleState.inactive:
        Log.d('Ignoring: $state');
        break;
      case AppLifecycleState.paused:
        onSystemAppPaused();
        break;
      case AppLifecycleState.detached:
        Log.d('Ignoring: $state');
        break;
    }
  }

  /// overload this method to handle callbacks from the underlying
  /// platform specific plugin
  Future<dynamic> onMethodCallback(SlotEntry slotEntry, MethodCall call);

  Future<dynamic> _onMethodCallback(MethodCall call) {
    var slotNo = call.arguments['slotNo'] as int;
    var slotEntry = _slots[slotNo];

    // Log.d(
    //     'Dart received ${call.method} on slotNo $slotNo for '
    //     '${slotEntry?.runtimeType}',
    //     supressDuplicates: true);

    return onMethodCallback(slotEntry, call);
  }

  /// Invokes a method in the platform specific plugin for the
  /// given [slotEntry]. The connector is a link either
  /// a specific SoundRecorder or QuickPlay instance.
  Future<dynamic> invokeMethod(
      SlotEntry slotEntry, String methodName, Map<String, dynamic> call) async {
    /// allocate a slot for this call.
    var slotNo = findSlot(slotEntry);
    if (slotNo == -1) {
      throw SlotEntryNotRegisteredException(
          'The SlotEntry for ${slotEntry.runtimeType} was not found.');
    }

    call['slotNo'] = slotNo;
    var result = _channel.invokeMethod<dynamic>(methodName, call);

    Log.d('invokeMethod returned for $methodName slot: $slotNo');
    return result;
  }

  /// Allows you to register a connector with the plugin.
  /// Registering a connector allocates a slot for communicating
  /// with the platform specific plugin.
  /// To use a plugin you start by calling [register]
  /// and finish by calling [release].
  void register(SlotEntry slotEntry) {
    var inserted = false;
    for (var i = 0; i < _slots.length; ++i) {
      if (_slots[i] == null) {
        _slots[i] = slotEntry;
        inserted = true;
        break;
      }
    }
    if (!inserted) {
      _slots.add(slotEntry);
    }
    Log.d(red(
        'registered ${slotEntry.runtimeType} to slot: ${_slots.length - 1}'));
  }

  /// Checks if the given slot is registered.
  bool isRegistered(SlotEntry slotEntry) => findSlot(slotEntry) != -1;

  ///
  void release(SlotEntry slotEntry) {
    var slot = findSlot(slotEntry);
    Log.d(red('releasing slot ${slotEntry.runtimeType} from $slot'));
    if (slot != -1) {
      _slots[slot] = null;
    } else {
      throw SlotEntryNotRegisteredException(
          'The SlotEntry was not found when releasing '
          'the ${slotEntry.runtimeType}.');
    }
  }

  ///
  @protected
  int findSlot(SlotEntry slotEntry) {
    var slot = -1;
    for (var i = 0; i < _slots.length; ++i) {
      if (_slots[i] == slotEntry) {
        slot = i;
        break;
      }
    }
    return slot;
  }

  /// calls the [action] for each slot.
  void forEachSlot(void Function(SlotEntry) action) {
    for (var i = 0; i < _slots.length; ++i) {
      var entry = _slots[i];
      if (entry != null) {
        action(entry);
      }
    }
  }

  /// Overload this method to receive notifications when the app is paused.
  void onSystemAppPaused();

  /// Overload this method to receive notifications when the app is resumed.
  void onSystemAppResumed();
}

/// Thrown if you try to release or access a connector that isn't
/// registered.
class SlotEntryNotRegisteredException implements Exception {
  final String _message;

  ///
  SlotEntryNotRegisteredException(this._message);

  String toString() => _message;
}
