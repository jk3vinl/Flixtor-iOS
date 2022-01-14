//
//  Trailer.swift
//  Flixtor
//
//  Created by Kevin Liu on 2022-01-13.
//

import Foundation

struct Trailer: Identifiable, Hashable {
    var id: String = UUID().uuidString
    var name: String
    var videoURL: URL
    var thumbnailImageURL: URL
}
