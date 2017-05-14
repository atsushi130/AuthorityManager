//
//  DeprivationApplicationValidator.swift
//  AuthorityManager
//
//  Created by 三宅　篤史 on 2017/05/16.
//
//

struct DeprivationApplicationValidator<T: ApplicationValidationable> {
    typealias U = AuthorityUniqueGenerator
    var repository: AuthorityRepository!
    var mapGenerator: AuthorityMapGeneratorImpl<U>!
    var retainAuthorityValidator: RetainAuthorityValidator<T>!
}

extension DeprivationApplicationValidator: ApplicationValidator {
    
    typealias V = DeprivationApplicationValidator<T>
    
    static func build(builder: @escaping (V) -> V) -> V {
        return builder(V())
    }
   
    func validate(account: String, authorities: [T]) -> ValidationResult<T> {
        return self.retainAuthorityValidator.validate(account: account, authorities: authorities)
    }
}
