//
//  AuthorityUniqueKeyGenerator.swift
//  AuthorityManager
//
//  Created by 三宅　篤史 on 2017/05/16.
//
//

struct AuthorityUniqueGenerator: KeyGenerator {
    typealias T = AuthorityUniqueGenerator
    func generate(authority: Authoritable) -> Key<T> {
        return Key<T>(key: "\(authority.assetId)|\(authority.accountId)|\(authority.deviceId)")
    }
}
