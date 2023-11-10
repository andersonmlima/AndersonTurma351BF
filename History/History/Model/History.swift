//
//  History.swift
//  History
//
//  Created by Anderson Moura on 09/11/23.
//

import Foundation

import Foundation

// MARK: - History
struct History: Codable {
    var totalValue: Double
    var historyAccountList: [HistoryAccountList]
}

// MARK: - HistoryAccountList
struct HistoryAccountList: Codable {
    var name: String
    var price: Double
    var iconImage: String
}

