//
//  GrantApplicationValidator.swift
//  AuthorityManager
//
//  Created by 三宅　篤史 on 2017/05/16.
//
//

struct GrantApplicationValidator<T: ApplicationValidationable> {
    typealias U = AuthorityUniqueGenerator
    fileprivate var repository: AuthorityRepository!
    fileprivate var mapGenerator: AuthorityMapGeneratorImpl<U>!
    fileprivate var retainAuthorityValidator: RetainAuthorityValidator<T>!
}

extension GrantApplicationValidator: ApplicationValidator {
    
    typealias V = GrantApplicationValidator<T>
    
    static func build(builder: @escaping (V) -> V) -> V {
        return builder(V())
    }
    
    func validate(account: String, authorities: [T]) -> ValidationResult<T> {
        return self.retainAuthorityValidator.validate(account: account, authorities: authorities)
    }
}
