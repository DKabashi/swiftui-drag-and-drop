//
//  FruitsViewModel.swift
//  ListDragAndDrop
//
//  Created by Donat Kabashi on 5.3.22.
//

import SwiftUI

class FruitsListViewModel: ObservableObject {
    @Published var draggedItem: Fruit?
    @Published var fruits: [Fruit] = [
      Fruit(
          title: "Blueberry",
          description: "Blueberries are sweet, nutritious and wildly popular fruit all over the world.",
          image: "blueberry",
          gradientColors: [Color("ColorBlueberryLight"), Color("ColorBlueberryDark")]
        ),
        Fruit(
          title: "Strawberry",
          description: "Widely appreciated for its characteristic aroma,  red color, juicy texture, and sweetness.",
          image: "strawberry",
          gradientColors: [Color("ColorStrawberryLight"), Color("ColorStrawberryDark")]
        ),
        Fruit(
          title: "Lemon",
          description: "There's no doubt lemons are delicious, but does adding them to water make you healthier?",
          image: "lemon",
          gradientColors: [Color("ColorLemonLight"), Color("ColorLemonDark")]
        ),
        Fruit(
          title: "Plum",
          description: "Plums are a very nutritious fruit. An excellent source of vitamins, minerals, fiber and antioxidants.",
          image: "plum",
          gradientColors: [Color("ColorPlumLight"), Color("ColorPlumDark")]
        
        ),
        Fruit(
          title: "Lime",
          description: "Sour, round, and bright green citrus fruits. Limes are high in vitamin C, antioxidants, and other nutrients.",
          image: "lime",
          gradientColors: [Color("ColorLimeLight"), Color("ColorLimeDark")]
       
        ),
        Fruit(
          title: "Pear",
          description: "Sweet, bell-shaped fruits that have been enjoyed since ancient times. They can be eaten crisp or soft.",
          image: "pear",
          gradientColors: [Color("ColorPearLight"), Color("ColorPearDark")]
        
        ),
        Fruit(
          title: "Gooseberry",
          description: "Sweet, bell-shaped fruits that have been enjoyed since ancient times. They can be eaten crisp or soft.",
          image: "gooseberry",
          gradientColors: [Color("ColorGooseberryLight"), Color("ColorGooseberryDark")]
         
        ),
        Fruit(
          title: "Mango",
          description: "Sweet, bell-shaped fruits that have been enjoyed since ancient times. They can be eaten crisp or soft.",
          image: "mango",
          gradientColors: [Color("ColorMangoLight"), Color("ColorMangoDark")]
         
        ),
        Fruit(
          title: "Watermelon",
          description: "Sweet, bell-shaped fruits that have been enjoyed since ancient times. They can be eaten crisp or soft.",
          image: "watermelon",
          gradientColors: [Color("ColorWatermelonLight"), Color("ColorWatermelonDark")]
         
        ),
        Fruit(
          title: "Cherry",
          description: "Sweet, bell-shaped fruits that have been enjoyed since ancient times. They can be eaten crisp or soft.",
          image: "cherry",
          gradientColors: [Color("ColorCherryLight"), Color("ColorCherryDark")]
         
        ),
        Fruit(
          title: "Grapefruit",
          description: "Sweet, bell-shaped fruits that have been enjoyed since ancient times. They can be eaten crisp or soft.",
          image: "grapefruit",
          gradientColors: [Color("ColorGrapefruitLight"), Color("ColorGrapefruitDark")]
        
        ),
        Fruit(
          title: "Apple",
          description: "Apples are one of the most popular, and exceptionally healthy fruit for good reason.",
          image: "apple",
          gradientColors: [Color("ColorAppleLight"), Color("ColorAppleDark")]
        
        )
    ]

}
