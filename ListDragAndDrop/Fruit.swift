//
//  Fruit.swift
//  ListDragAndDrop
//
//  Created by Donat Kabashi on 5.3.22.
//

import SwiftUI

struct Fruit: Identifiable, Equatable {
    var id = UUID()
    var title: String
    var description: String
    var image: String
    var gradientColors: [Color]
}
