//
//  iDineApp.swift
//  iDine
//
//  Created by Zeljko Lucic on 7.10.23..
//

import SwiftUI

@main
struct iDineApp: App {
    @StateObject var order = Order()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(order)
        }
    }
}
