//
//  VideoModel.swift
//  Africa
//
//  Created by Aderemilekun Adele on 06/12/2023.
//

import Foundation

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    // Computed Property
    var thumbnail: String {
        "video-\(id)"
    }
}
