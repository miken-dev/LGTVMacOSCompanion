//
//  ContentView.swift
//  LGTVMacOSCompanion
//
//  Created by Michael Neal on 8/1/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
		VStack {
			Button("Start Observers") {
				systemEventMonitor.startObservers()
			}
			Button("Restart Observers") {
				systemEventMonitor.restartObservers()
			}
		}
        .padding()
    }
}

#Preview {
    ContentView()
}
