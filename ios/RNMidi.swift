//
//  RNMidi.swift
//  RNMidi
//
//  Created by Christian Howe on 11/14/18.
//  Copyright © 2018 Facebook. All rights reserved.
//

import Foundation
import CoreMidi

func receiveMidi(packets: UnsafePointer<MIDIPacketList>,
                 context: UnsafeMutableRawPointer?,
                 sourceContext: UnsafeMutableRawPointer?) -> Void {
    // context
}

func notifyStateChange(notification: UnsafePointer<MIDINotification>,
                       context: UnsafeMutableRawPointer?) -> Void {
    // context
}

@objc(RNMidi)
class RNMidi: NSObject {
    var client: MIDIClientRef
    var entities: [MIDIEntityRef]

    @objc(setup)
    func setup() -> Dictionary<String, Any>? {
        let status = MIDIClientCreate(
            "Client for react-native-midi" as CFString,
            notifyStateChange,
            &self,
            &self.client
        )

        if status != noErr {
            let err = NSError(domain: NSOSStatusErrorDomain, code: status, userInfo: nil)
            return RCTMakeError(err.localizedDescription)
        }
        else {
            return nil
        }
    }

    @objc(listEntities)
    func listEntities() -> [Int] {
        let numMidiDevices = MIDIGetNumberOfDevices()

        var entityIndex = 0
        for i in 0..<numMidiDevices {
            let device = MIDIGetDevice(i)
            let numEntities = MIDIDeviceGetNumberOfEntities(device)
            for j in 0...<numEntities {
                let entity = MIDIDeviceGetEntity(device, j)
                self.entities[entityIndex] = entity
                ++entityIndex
            }
        }

        return 0..<entityIndex
    }

    @objc
    func constantsToExport() -> [String: Any]! {
        return [:]
    }
}
