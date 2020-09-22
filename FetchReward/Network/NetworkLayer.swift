//
//  NetworkLayer.swift
//  FetchReward
//
//  Created by Oniel Rosario on 9/22/20.
//  Copyright © 2020 Oniel Rosario. All rights reserved.
//

import Foundation

public class NetworkLayer {
    private var endpoint: URL
    
    init() {
        self.endpoint = URL(string: Constant.baseURL)!
    }
    
    func getItems(_ result: @escaping(Result<[DataModel], Error>) -> Void) {
        URLSession.shared.dataTask(with: endpoint) { (data, response, error) in
            if let error = error {
                result(.failure(error))
            }
            
            if let data = data {
                do {
                    let models = try JSONDecoder().decode([DataModel].self, from: data)
                    result(.success(models))
                } catch {
                    result(.failure(error))
                }
            }
        }.resume()
    }
}
