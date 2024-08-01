//
//  systemMonitor.swift
//  LGTVMacOSCompanion
//
//  Created by Michael Neal on 8/1/24.
//

import AppKit
import Foundation

class SystemEventMonitor {
	private let notificationCenter = NSWorkspace.shared.notificationCenter
	
	func startObservers() {
		notificationCenter.addObserver(self,
									   selector: #selector(sleepListener(_:)),
									   name: NSWorkspace.didWakeNotification,
									   object: nil
		)
		
		notificationCenter.addObserver(self,
									   selector: #selector(sleepListener(_:)),
									   name: NSWorkspace.willSleepNotification,
									   object: nil)
		
	}
	func applicationDidFinishLaunching(_ aNotification: Notification) {
		NSWorkspace.shared.notificationCenter.addObserver(self, selector: #selector(sleepListener(_:)),
														  name: NSWorkspace.willSleepNotification, object: nil)
		NSWorkspace.shared.notificationCenter.addObserver(self, selector: #selector(sleepListener(_:)),
														  name: NSWorkspace.didWakeNotification, object: nil)
	}
	
	
	@objc private func sleepListener(_ Notification: Notification) {
		print("listening to sleep")
		if Notification.name == NSWorkspace.willSleepNotification {
			print("Going to sleep at \(Date.now.formatted(date: .abbreviated, time: .complete))")
		} else if Notification.name == NSWorkspace.didWakeNotification {
			print("Woke up at \(Date.now.formatted(date: .abbreviated, time: .complete))")
		} else {
			print("Some other event other than the first two")
		}
	}

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
