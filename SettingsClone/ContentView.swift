//
//  ContentView.swift
//  SettingsClone
//
//  Created by Juan Camilo Marín Ochoa on 13/03/23.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var settings = Settings()
    
    var body: some View {
        NavigationView {
            Form {
                networkBlock()
                generalSettingsBlock()
            }
            .navigationTitle("Configuración")
        }
    }
    
    func networkBlock() -> some View {
        Section {
            Toggle(isOn: $settings.airplaneMde) {
                SectionItem(
                    image: "airplane",
                    label: "Modo de vuelo",
                    color: .orange
                )
            }
            
            NavigationLink(destination: Text("")) {
                HStack() {
                    SectionItem(
                        image: "wifi",
                        label: "Wi-Fi",
                        color: .blue
                    )
                    Spacer()
                    Text("red-name")
                        .foregroundColor(.gray)
                }
            }
            
            NavigationLink(destination: BluetoothView(bluetooth: settings)) {
                HStack() {
                    SectionItem(
                        image: "wave.3.right",
                        label: "Bluetooth",
                        color: .blue
                    )
                    Spacer()
                    Text(settings.isBluetoothOn ? "Activado" : "Desactivado")
                        .foregroundColor(.gray)
                }
            }
            
            NavigationLink(destination: Text("")) {
                HStack() {
                    SectionItem(
                        image: "antenna.radiowaves.left.and.right",
                        label: "Red celular",
                        color: .green
                    )
                }
            }
            
            NavigationLink(destination: Text("")) {
                HStack() {
                    SectionItem(
                        image: "personalhotspot",
                        label: "Compartir Internet",
                        color: .green
                    )
                }
            }
        }
    }
    
    func generalSettingsBlock() -> some View {
        Section {
            NavigationLink(destination: Text("")) {
                SectionItem(
                    image: "bell.badge.fill",
                    label: "Notificaciones",
                    color: .red
                )
            }
            NavigationLink(destination: Text("")) {
                SectionItem(
                    image: "speaker.wave.3.fill",
                    label: "Sonidos y vibración",
                    color: .pink
                )
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
