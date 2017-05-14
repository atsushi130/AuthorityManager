//
//  Authority.swift
//  AuthorityManager
//
//  Created by 三宅　篤史 on 2017/05/16.
//
//

struct Authority: Authoritable, ApplicationValidationable {
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
    
    init(model: AuthorityModel) {
        self.init(assetId: model.assetId, accountId: model.accountId, deviceId: model.deviceId, departmentId: model.departmentId, name: model.name)
    }
}
