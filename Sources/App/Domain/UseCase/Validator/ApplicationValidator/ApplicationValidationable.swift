//
//  ApplicationValidationable.swift
//  AuthorityManager
//
//  Created by 三宅　篤史 on 2017/05/16.
//
//

protocol ApplicationValidationable: Validationable {
    var departmentId: Int { get set }
    init(assetId: Int, accountId: Int, deviceId: Int, departmentId: Int, name: String)
}
