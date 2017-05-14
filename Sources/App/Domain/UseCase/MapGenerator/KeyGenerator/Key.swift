//
//  Key.swift
//  AuthorityManager
//
//  Created by 三宅　篤史 on 2017/05/16.
//
//

struct Key<T: KeyGenerator> {
    fileprivate(set) var key: String
    init(key: String) {
        self.key = key
    }
}
