//
//  FruitCellView.swift
//  ListDragAndDrop
//
//  Created by Donat Kabashi on 5.3.22.
//

import SwiftUI

struct FruitCellView: View {
    let fruit: Fruit
    
    var body: some View {
        HStack {
            Image(fruit.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 90)
                .shadow(radius: 5)
                .padding(.leading, 10)
            Spacer()
            VStack(alignment: .leading) {
                Text(fruit.title)
                    .font(.title)
                    .bold()
                    .shadow(radius: 5)
                    .padding(.bottom, 5)
                Text(fruit.description)
                    .shadow(radius: 5)
            }
            Spacer()
            Image(systemName: "line.3.horizontal")
                .frame(width: 30)
                .shadow(radius: 5)
                .padding(.trailing, 10)
        }
        .foregroundColor(.white)
        .frame(minWidth: 150, idealWidth: 360, maxWidth: 500)
        .frame(height: 150)
        .background(
            LinearGradient(
                gradient: Gradient(colors: fruit.gradientColors),
                startPoint: .top,
                endPoint: .bottom))
        .cornerRadius(15)
        .padding(EdgeInsets(top: 5, leading: 20, bottom: 5, trailing: 20))
     
        
    }
}

struct FruitCellView_Previews: PreviewProvider {
    static let blueberryFruit = Fruit(
        title: "Blueberry",
        description: "Blueberries are sweet, nutritious and wildly popular fruit all over the world.",
        image: "blueberry",
        gradientColors: [Color("ColorBlueberryLight"), Color("ColorBlueberryDark")]
    )
    static var previews: some View {
        FruitCellView(fruit: blueberryFruit)
    }
}
