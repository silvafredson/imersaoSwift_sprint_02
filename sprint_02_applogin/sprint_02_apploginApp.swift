//
//  sprint_02_apploginApp.swift
//  sprint_02_applogin
//
//  Created by Fredson Silva on 13/04/22.
//

import SwiftUI

@main
struct sprint_02_apploginApp: App {
    //Acessando informações de ambiente
    @Environment(\.scenePhase) private var scenePhase
    
    var body: some Scene {
        
        // MARK: definindo a primeira tela do app
        WindowGroup {
            ContentView()
        }
        
        // Monitorando  alterações na fase do ambiente
        .onChange(of: scenePhase) { phase in
            
            // Monitorando ações de acordo coma a situação atual
            switch phase {
                
            case .active:
                print("Meu App está: [Ativo]")
                
            case .inactive:
                print("Meu App está: [Inativo]")
                
            case .background:
                print("Meu App está: [Em Background]")
                
            @unknown default:
                print("Onde está o Meu App? 😅")
            }
        }
        
    }
}
