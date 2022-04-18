//
//  EmpresasModel.swift
//  DesafioEmpresas
//
//  Created by Rita Lisboa on 13/04/22.
//

import Foundation

struct EnterpriseTypeParams: Codable {
    let id: Int?
    let enterprise_type_name: [String]?
}

struct EnterpriseParams : Codable {
    let id: Int?
    let email_enterprise: String?
    let facebook: String?
    let twitter: String?
    let linkedin: String?
    let phone: String?
    let own_enterprise: Bool?
    let enterprise_name: [String]?
    let description: [String]?
    let share_price: Float?
}

struct PortfolioParams: Codable {
    let enterprises: [EnterpriseParams]
}

struct UserParams: Codable {
    let investor: [InvestorParams]
    let enterprise: [String]?
    let success: Bool?
}


struct InvestorParams: Codable {
    let id: Int?
    let investor_name: String?
    let email: String?
    let city: String?
    let country: String?
    let balance: Int?
    let portfolio_value: Float?
    let first_access: Bool?
    let super_angel: Bool?
}
