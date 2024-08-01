//
//  systemMonitor.swift
//  LGTVMacOSCompanion
//
//  Created by Michael Neal on 8/1/24.
//

import AppKit
import Foundation

let notificationCenter = NSWorkspace.shared.notificationCenter

	private func stopObservers() {
		NotificationCenter.default.removeObserver(self)
		NSWorkspace.shared.notificationCenter.removeObserver(self)
		DistributedNotificationCenter.default().removeObserver(self)
	}
	
	func restartObservers() {
		stopObservers()
		startObservers()
		print("Observers restarted")
	}
}
