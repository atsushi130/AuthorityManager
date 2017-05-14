//
//  Validator.swift
//  AuthorityManager
//
//  Created by 三宅　篤史 on 2017/05/16.
//
//

protocol Validator {
    associatedtype T: Validationable
    init()
    func validate(account: String, authorities: [T]) -> ValidationResult<T>
}
