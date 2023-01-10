//
//  QuickDeleteChatTests.swift
//  QuickDeleteChatTests
//
//  Created by 前田航汰 on 2023/01/09.
//

import XCTest
@testable import QuickDeleteChat

final class LoginTests: XCTestCase {

    let authManager = AuthManager()

    func test_ログインが成功すること() {
        let mailAdress = "test@testmail.com"
        let password = "000000"

        authManager.Login(email: mailAdress, password: password, complition: { isSuccess in
            XCTAssertEqual(isSuccess, true)
        })
    }

    func test_ログインのエラーが返ってくること_パスワードミス() {
        let mailAdress = "test@testmail.com"
        let password = "111111"

        authManager.Login(email: mailAdress, password: password, complition: { isSuccess in
            XCTAssertEqual(isSuccess, false)
        })
    }

    func test_ログインのエラーが返ってくること_メールアドレスミス() {
        let mailAdress = "test.miss@testmail.com"
        let password = "000000"

        authManager.Login(email: mailAdress, password: password, complition: { isSuccess in
            XCTAssertEqual(isSuccess, false)
        })
    }

    func test_ログインのエラーが返ってくること_パスワード＆メールアドレスミス() {
        let mailAdress = "test.miss@testmail.com"
        let password = "111111"

        authManager.Login(email: mailAdress, password: password, complition: { isSuccess in
            XCTAssertEqual(isSuccess, false)
        })
    }

}
