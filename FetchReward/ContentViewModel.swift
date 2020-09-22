//
//  ContentViewModel.swift
//  FetchReward
//
//  Created by Oniel Rosario on 9/22/20.
//  Copyright © 2020 Oniel Rosario. All rights reserved.
//

import Combine
import SwiftUI


class ContentViewModel: ObservableObject {
    @Published var items: [DataModel] = []
    
    
    
    init() {
        NetworkLayer().getItems({ result in
            switch result {
            case .success(let items):
                DispatchQueue.main.async {
                    self.items = items.sorted { $0.listId < $1.listId}.filter { $0.name?.isEmpty == false }
                }
            case .failure( _):
                break
                //handle error
            }
        })
    }
    
    private func itemsGrouped() {
        
    }
}
