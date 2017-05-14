//
//  ValidationResult.swift
//  AuthorityManager
//
//  Created by 三宅　篤史 on 2017/05/16.
//
//

enum ValidationResult<T: Validationable> {
    case correct
    case illegal(illegalAuthorities: [IllegalType<T>])
    
    var messages: [String] {
        switch self {
        case .correct:                         return []
        case .illegal(let illegalAuthorities): return illegalAuthorities.map { $0.message }
        }
    }
}

enum IllegalType<T: Validationable> {
    case notRetain(authority: T)
    
    var message: String {
        switch self {
        case .notRetain(let authority):
            return "assetId: \(authority.assetId), accountId: \(authority.accountId), deviceId: \(authority.deviceId) の権限を保持していません"
        }
    }
}
