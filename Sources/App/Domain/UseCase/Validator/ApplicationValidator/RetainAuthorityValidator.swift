//
//  RetainAuthorityValidator.swift
//  AuthorityManager
//
//  Created by 三宅　篤史 on 2017/05/16.
//
//

struct RetainAuthorityValidator<T: ApplicationValidationable> {
    typealias U = AuthorityUniqueGenerator
    fileprivate var repository: AuthorityRepository!
    fileprivate var mapGenerator: AuthorityMapGeneratorImpl<U>!
}

extension RetainAuthorityValidator {
    
    fileprivate func getRetentionAuthorityMap(by account: String) -> AuthorityMap<U> {
        let keepAuthorities = self.repository.selectAll(by: account)
        return self.mapGenerator.generate(authorities: keepAuthorities)
    }
    
    // authorityMap に authority が存在しなければ true を返す
    fileprivate func isNotRetain(authority: T, authorityMap: AuthorityMap<U>) -> Bool {
        let keyGenerator = U()
        let key          = keyGenerator.generate(authority: authority)
        
        switch authorityMap[key] {
        case .some: return false
        case .none: return true
        }
    }
    
    fileprivate func validationResult(authorities: [T]) -> ValidationResult<T> {
        switch authorities.isEmpty {
        case true:  return ValidationResult.correct
        case false: return ValidationResult.illegal(illegalAuthorities: authorities.map { IllegalType.notRetain(authority: $0) })
        }
    }
}

extension RetainAuthorityValidator: ApplicationValidator {
    
    typealias V = RetainAuthorityValidator<T>
    
    static func build(builder: @escaping (V) -> V) -> V {
        return builder(V())
    }
    
    /// 対象アカウントが authorities を保持しているかどうかをバリデーション
    func validate(account: String, authorities: [T]) -> ValidationResult<T> {
        let authorityMap         = self.getRetentionAuthorityMap(by: account)
        let notRetainAuthorities = authorities.filter {
            self.isNotRetain(authority: $0, authorityMap: authorityMap)
        }
        
        return self.validationResult(authorities: notRetainAuthorities)
    }
}
