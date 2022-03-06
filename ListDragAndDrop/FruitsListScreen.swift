//
//  FruitsListScreen.swift
//  ListDragAndDrop
//
//  Created by Donat Kabashi on 5.3.22.
//

import SwiftUI
import UniformTypeIdentifiers

struct FruitsListScreen: View {
    @StateObject var viewModel = FruitsListViewModel()
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack {
                    ForEach(viewModel.fruits) { fruit in
                        FruitCellView(fruit: fruit)
                            .onDrag({
                                viewModel.draggedItem = fruit
                                return NSItemProvider(item: nil, typeIdentifier: fruit.title)
                            })
                            .onDrop(of: [UTType.text], delegate:   DragAndDropService<Fruit>(currentItem: fruit, items: $viewModel.fruits, draggedItem: $viewModel.draggedItem)
                            )
                    }
                }.padding(.vertical, 20)
            }.navigationTitle("List drag and drop 🔥")
        } 
    }
}

struct FruitsListScreen_Previews: PreviewProvider {
    static var previews: some View {
        FruitsListScreen()
    }
}
