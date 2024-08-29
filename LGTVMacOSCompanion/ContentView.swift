//
//  ContentView.swift
//  LGTVMacOSCompanion
//
//  Created by Michael Neal on 8/1/24.
//

import SwiftUI

struct ContentView: View {
	@State private var clientKey = "No Key Found"
	
	var systemEventMonitor = SystemEventMonitor()
    var body: some View {
		VStack(alignment: .leading) {
			Text("Dev testing")
				.font(.title)
			Group {
				Text("Observers")
				Button("Start Observers") {
					systemEventMonitor.startObservers()
				}
				Button("Restart Observers") {
					systemEventMonitor.restartObservers()
				}
			}
			Group {
				Text("LGTV Controls")
				Button("Get client-key: \(clientKey)") { }
				Button("Turn on LGTV (WoL Packet)") { }
				Button("Turn off LGTV") { }
				Button("Set TV to HDMI 2") { }
				Button("Set HDMI 2 to 'PC'") { }
				Button("Print connected displays") { }
				Button("Print connected USB devices") { }
			}
		}
        .padding()
    }
}

#Preview {
    ContentView()
}
