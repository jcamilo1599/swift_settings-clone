//
//  SettingsModel.swift
//  SettingsClone
//
//  Created by Juan Camilo Marín Ochoa on 7/04/23.
//

import Foundation
import Combine

class Settings: ObservableObject {
    var didChange = PassthroughSubject<Void, Never>()
    
    @Published var airplaneMde = false { didSet { update() } }
    
    @Published var isBluetoothOn = false { didSet { update() } }
    
    @Published var types = ["Off","On"]
    @Published var type = 0 { didSet { update() } }
    
    @Published var isToggleOn = false { didSet { update() } }
    
    func update() {
        didChange.send(())
    }
}
