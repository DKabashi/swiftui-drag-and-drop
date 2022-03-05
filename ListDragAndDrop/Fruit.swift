//
//  Fruit.swift
//  ListDragAndDrop
//
//  Created by Donat Kabashi on 5.3.22.
//

import SwiftUI

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var image: String
    var description: String
    var gradientColors: [Color]
}
