//
//  AuthorityModel.swift
//  AuthorityManager
//
//  Created by 三宅　篤史 on 2017/05/16.
//
//

struct AuthorityModel: Authoritable {
    
    var assetId:      Int
    var accountId:    Int
    var deviceId:     Int
    var departmentId: Int
    var name:         String
    
    init(assetId: Int, accountId: Int, deviceId: Int, departmentId: Int, name: String) {
        self.assetId      = assetId
        self.accountId    = accountId
        self.deviceId     = deviceId
        self.departmentId = departmentId
        self.name         = name     
    }
    
    init(entity: AuthorityEntity) {
        self.init(assetId: entity.assetId, accountId: entity.accountId, deviceId: entity.deviceId, departmentId: entity.departmentId, name: entity.name)
    }
}
