//
//  ItemRow.swift
//  Hacker News WatchKit Extension
//
//  Created by Austin Conlon on 4/12/20.
//  Copyright © 2020 Austin Conlon. All rights reserved.
//

import SwiftUI

struct ItemRow: View {
    let item: Item
    
    var body: some View {
        VStack {
            Text(item.title).fontWeight(.medium)
        }
    }
}

struct ItemRow_Previews: PreviewProvider {
    static var previews: some View {
        ItemRow(item: itemData[0])
    }
}
