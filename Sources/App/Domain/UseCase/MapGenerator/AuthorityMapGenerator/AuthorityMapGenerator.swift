//
//  AuthorityMapGenerator.swift
//  AuthorityManager
//
//  Created by 三宅　篤史 on 2017/05/16.
//
//

protocol AuthorityMapGenerator {
    associatedtype T: KeyGenerator
    func generate(authorities: [Authoritable]) -> AuthorityMap<T>
}

/// クラス引数で指定した KeyGenerator を利用して AuthorityMap を生成
struct AuthorityMapGeneratorImpl<T: KeyGenerator>: AuthorityMapGenerator {

    private let keyGenerator: T!
    private let map: [String: Authoritable]
    
    /// KeyGenerator で束縛した AuthorityMap を生成
    func generate(authorities: [Authoritable]) -> AuthorityMap<T> {
        
        let map = authorities.map { (authoriry: Authoritable) -> (key: String, value: Authoritable) in
            let key = self.keyGenerator.generate(authority: authoriry)
            return (key: key.key, value: authoriry)
        }.toDictionary { $0 }
        
        return AuthorityMap<T>(map: map)
    }
}
