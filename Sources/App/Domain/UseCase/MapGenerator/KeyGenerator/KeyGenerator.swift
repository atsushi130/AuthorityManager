//
//  KeyGenerator.swift
//  AuthorityManager
//
//  Created by 三宅　篤史 on 2017/05/14.
//
//

protocol KeyGenerator {
    func generate(authority: Authoritable) -> Key<Self>
}
