//
//  ViewModel.swift
//  Techelix UI Task
//
//  Created by Sabih Haris on 4/24/23.
//

import Foundation

class HomeViewModel {
    
    static func decodeTeams() -> [Sport] {
        let landmarkJson = Bundle.main.path(forResource: "jsonData", ofType: "json")
        let landmark = try! Data(contentsOf: URL(fileURLWithPath: landmarkJson!),options: .alwaysMapped)
        return try! JSONDecoder().decode([Sport].self, from: landmark)
    }
    
}
