//
//  ContentView.swift
//  FetchReward
//
//  Created by Oniel Rosario on 9/22/20.
//  Copyright © 2020 Oniel Rosario. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewModel: ContentViewModel

    var body: some View {
        List {
            ForEach(viewModel.items, id: \.id) { item in
                VStack(alignment: .leading) {
                    Text(item.id.description)
                    Text(item.listId.description)
                    Text(item.name ?? "")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(ContentViewModel())
    }
}
