//
//  AuthorityEntity.swift
//  AuthorityManager
//
//  Created by 三宅　篤史 on 2017/05/16.
//
//

struct AuthorityEntity {
    let assetId:      Int
    let accountId:    Int
    let deviceId:     Int
    let departmentId: Int
    let name:         String
    
    init(assetId: Int, accountId: Int, deviceId: Int, departmentId: Int, name: String) {
        self.assetId      = assetId
        self.accountId    = accountId
        self.deviceId     = deviceId
        self.departmentId = departmentId
        self.name         = name
    }
}
