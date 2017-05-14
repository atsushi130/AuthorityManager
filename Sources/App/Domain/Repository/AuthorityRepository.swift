//
//  AuthorityRepository.swift
//  AuthorityManager
//
//  Created by 三宅　篤史 on 2017/05/16.
//
//

protocol AuthorityRepository {
    func selectAll(by account: String) -> [AuthorityModel]
    func selectAuthority(by assetId: Int, accountId: Int, deviceId: Int, departmentId: Int) -> AuthorityModel?
}

struct AuthorityRepositoryImpl {
    fileprivate let dao: AuthorityDao
}

extension AuthorityRepositoryImpl: AuthorityRepository {
    
    func selectAll(by account: String) -> [AuthorityModel] {
        return self.dao.selectAll(by: account).map {
            AuthorityModel(entity: $0)
        }
    }
    
    func selectAuthority(by assetId: Int, accountId: Int, deviceId: Int, departmentId: Int) -> AuthorityModel? {
        return self.dao.selectAuthority(by: assetId, accountId: accountId, deviceId: deviceId, departmentId: departmentId).map {
            AuthorityModel(entity: $0)
        }
    }
}
