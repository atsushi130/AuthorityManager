//
//  AuthorityMap.swift
//  AuthorityManager
//
//  Created by 三宅　篤史 on 2017/05/16.
//
//

import Foundation

/// Map の key 生成に利用した KeyGenerator で束縛した AuthorityMap クラス
struct AuthorityMap<T: KeyGenerator> {
    
    private let map: [String: Authoritable]
    
    init(map: [String: Authoritable]) {
        self.map = map
    }
    
    /// KeyGenerator で生成した key をもとに value を取得
    subscript(key: Key<T>) -> Authoritable? {
        return self.map[key.key]
    }
}
