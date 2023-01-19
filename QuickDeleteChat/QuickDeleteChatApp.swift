//
//  QuickDeleteChatApp.swift
//  QuickDeleteChat
//
//  Created by 前田航汰 on 2023/01/09.
//

import SwiftUI
import Firebase

@main
struct QuickDeleteChatApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate

    var body: some Scene {
        WindowGroup {
            LoginView()
        }
    }

}
