//
//  Authoritable.swift
//  AuthorityManager
//
//  Created by 三宅　篤史 on 2017/05/16.
//
//

protocol Authoritable {
    var assetId:   Int { get set }
    var accountId: Int { get set }
    var deviceId:  Int { get set }
}
