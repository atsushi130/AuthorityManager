//
//  Collection+.swift
//  AuthorityManager
//
//  Created by 三宅　篤史 on 2017/05/16.
//
//

extension Collection {
    func toDictionary<K, V>(transform: (_ element: Self.Iterator.Element) -> (key: K, value: V)?) -> [K : V] {
        return self.reduce([:]) { (dictionary, e) in
            var dictionary = [K: V]()
            if let (key, value) = transform(e) {
                dictionary[key] = value
            }
            return dictionary
        }
    }
}
