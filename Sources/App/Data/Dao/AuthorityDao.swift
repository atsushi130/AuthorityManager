//
//  AuthorityDao.swift
//  AuthorityManager
//
//  Created by 三宅　篤史 on 2017/05/16.
//
//

protocol AuthorityDao {
    func selectAll(by account: String) -> [AuthorityEntity]
    func selectAuthority(by assetId: Int, accountId: Int, deviceId: Int, departmentId: Int) -> AuthorityEntity?
}

struct AuthorityDaoImpl: AuthorityDao {
    
    func selectAll(by account: String) -> [AuthorityEntity] {
        
        // stub
        let entity1 = AuthorityEntity(assetId: 1, accountId: 25341, deviceId: 0, departmentId: 1, name: "authority1")
        let entity2 = AuthorityEntity(assetId: 2, accountId: 25341, deviceId: 0, departmentId: 2, name: "authority2")
        let entity3 = AuthorityEntity(assetId: 3, accountId: 25341, deviceId: 0, departmentId: 3, name: "authority3")
        
        return [entity1, entity2, entity3]
    }
    
    func selectAuthority(by assetId: Int, accountId: Int, deviceId: Int, departmentId: Int) -> AuthorityEntity? {
        return AuthorityEntity(assetId: assetId, accountId: accountId, deviceId: deviceId, departmentId: departmentId, name: "authority")
    }
}
