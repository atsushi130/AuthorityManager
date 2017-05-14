//
//  ApplicationValidator.swift
//  AuthorityManager
//
//  Created by 三宅　篤史 on 2017/05/16.
//
//

protocol ApplicationValidator: Validator {
    associatedtype V = Self
    static func build(builder: @escaping (V) -> V) -> V
}
