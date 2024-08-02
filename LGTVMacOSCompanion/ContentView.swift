//
//  ContentView.swift
//  LGTVMacOSCompanion
//
//  Created by Michael Neal on 8/1/24.
//

import SwiftUI

struct ContentView: View {
	var systemEventMonitor = SystemEventMonitor()
    var body: some View {
		VStack(alignment: .leading) {
			Text("Development testing")
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
