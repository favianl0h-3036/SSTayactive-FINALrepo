//
//  Data.swift
//  SSTayactive 2
//
//  Created by Chew Caven on 6/12/20.
//  Copyright © 2020 Electron Inc. All rights reserved.
//

import Foundation

struct reddata {
    public var redhousepoint: Int
    public var redtotalcoins: Int
    public var redpeople: String
}
struct owndata {
    static var details: owndata = owndata(money: 0, username: "", steps: 0, cookies: 0, Level: 1, megaCookie: 0)
    var money: Int
    var username: String
    var steps: Int
    var cookies: Int
    var Level: Int
    var megaCookie: Int
}
