//
//  DragAndDropService.swift
//  ListDragAndDrop
//
//  Created by Donat Kabashi on 6.3.22.
//

import SwiftUI

struct DragAndDropService<T: Equatable>: DropDelegate {
    let currentItem: T
    @Binding var items: [T]
    @Binding var draggedItem: T?
    
    func performDrop(info: DropInfo) -> Bool {
        return true
    }
    
    func dropEntered(info: DropInfo) {
        guard let draggedItem = draggedItem,
              draggedItem != currentItem,
              let from = items.firstIndex(of: draggedItem),
              let to = items.firstIndex(of: currentItem)
        else {
            return
        }
        withAnimation {
            items.move(fromOffsets: IndexSet(integer: from), toOffset: to > from ? to + 1 : to)
        }
    }
    
}
