//
//  SettingsView.swift
//  LGTVMacOSCompanion
//
//  Created by Michael Neal on 8/8/24.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
		NavigationView {
			List {
				NavigationLink(destination: {
					Text("TV settings screen t/c")
				}, label: {
					Label("TVs", systemImage: "tv")
				})
				
				NavigationLink(destination: {
					Text("Device Detection settings screen t/c")
				}, label: {
					Label("Device Detection", systemImage: "cable.connector")
				})
				
				NavigationLink(destination: {
					Text("Network settings screen t/c")
				}, label: {
					Label("Network", systemImage: "network")
				})
			}
			.listStyle(.sidebar)
		}
    }
}

#Preview {
    SettingsView()
}
