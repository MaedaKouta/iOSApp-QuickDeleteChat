//
//  ContentView.swift
//  QuickDeleteChat
//
//  Created by 前田航汰 on 2023/01/09.
//

import SwiftUI

import SwiftUI
import FirebaseAuth

struct LoginView: View {
    @State var name = ""
    @State var password = ""
    @State private var isSecondView: Bool = false
    let authManager = AuthManager()

    var body: some View {
        VStack {
            Text("ログイン")
            TextField("名前", text: $name)
            TextField("パスワード", text: $password)
        }
        .padding()

        Button(action: {

            authManager.login(email: name, password: password, complition: { isSuccess, message in
                isSecondView = isSuccess
                print("認証状況：", isSuccess, message)
            })
        }) {
            Text("画面遷移Present").fontWeight(.bold).font(.largeTitle)
        }
        .sheet(isPresented: self.$isSecondView) {
            // trueになれば下からふわっと表示
            SecondView()
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
