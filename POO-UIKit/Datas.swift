//
//  Datas.swift
//  POO-UIKit
//
//  Created by kenter on 10/07/2022.
//

import Foundation

class Datas {
    
    static let shared = Datas()
    
    let hak = User(name: "Hakan", surname: "Kenter", imageString: "spider", age: 25)
    let jeje = User(name: "Cristiano", surname: "Ronaldo", imageString: "joker", age: 37)
    let max = User(name: "Serkan", surname: "Kenter", imageString: "groot", age: 23)
    let clo = User(name: "Neymar", surname: "Junior", imageString: "mario", age: 30)
    
    func allUser() -> [User] {
        var users: [User] = []
        users.append(hak)
        users.append(jeje)
        users.append(max)
        users.append(clo)
        return users
    }
}
