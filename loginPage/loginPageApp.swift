//
//  loginPageApp.swift
//  loginPage
//
//  Created by Саша on 31.01.2021.
//

import SwiftUI

@main
struct loginPageApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .colorScheme(.light)
                .background(Color.white)
                .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealWidth: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxHeight: .infinity, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .padding()
        }
    }
}
