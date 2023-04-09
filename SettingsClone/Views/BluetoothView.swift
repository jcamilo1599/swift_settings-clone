//
//  BluetoothView.swift
//  SettingsClone
//
//  Created by Juan Camilo Marín Ochoa on 7/04/23.
//

import SwiftUI

struct BluetoothView: View {
    @ObservedObject var bluetooth: Settings
    
    var body: some View {
        Form {
            Section(footer: Text("Este iPhone estará visible como \"iPhone\" mientras la configuración de Bluetooth esté abierta.")) {
                Toggle(isOn: $bluetooth.isBluetoothOn) {
                    Text("Bluetooth")
                }
            }
            
            Section(header: Text("MIS DISPOSITIVOS")) {
                Text("AirPods Pro 2")
                Text("Tronsmart Force Max")
            }
            
            if bluetooth.isBluetoothOn {
                Section(header: buildHeaderOtherDevices()) {
                    Text("WH-1000XM5")
                }
            }
        }
    }
    
    func buildHeaderOtherDevices() -> some View {
        HStack {
            Text("OTROS DISPOSITIVOS")
            
            ProgressView()
                .padding(.leading, 2)
        }
    }
}

struct BluetoothView_Previews: PreviewProvider {
    static var previews: some View {
        BluetoothView(bluetooth: Settings())
    }
}
