//
//  Model.swift
//  Techelix UI Task
//
//  Created by Sabih Haris on 4/24/23.
//

import Foundation

// MARK: - Sport

struct Sport: Codable {
    let sportId, name, timings: String
    let team: [Team]

    enum CodingKeys: String, CodingKey {
        case sportId
        case name, timings, team
    }
}

// MARK: - Team

struct Team: Codable {
    let image, name: String
}
