//
//  systemMonitor.swift
//  LGTVMacOSCompanion
//
//  Created by Michael Neal on 8/1/24.
//

import AppKit
import Foundation

let notificationCenter = NSWorkspace.shared.notificationCenter

func addObservers() {
	notificationCenter.addObserver(self,
								   selector: #selector(systemDidWake),
								   name: NSWorkspace.didWakeNotification,
								   object: nil
	)
	
	notificationCenter.addObserver(self,
								   selector: #selector(systemWillSleep),
								   name: NSWorkspace.willSleepNotification,
								   object: nil)
	
}
