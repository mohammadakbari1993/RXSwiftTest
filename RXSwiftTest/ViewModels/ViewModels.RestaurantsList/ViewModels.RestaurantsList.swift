//
//  ViewModels.ResturantsList.swift
//  RXSwiftTest
//
//  Created by Bahman on 12/3/22.
//

import Foundation
import RxSwift

extension ViewModels {
    
    final class RestaurantsList {
        
        let title = "Restaurants"
        
        private let resutaurantService : RestaurantsServiceProtocol
        
        init(resutaurantService: RestaurantsServiceProtocol = Services.Restaurants()) {
            self.resutaurantService = resutaurantService
        }
        
        func fetchRestaurantViewModels() -> Observable<[ViewModels.RestaurantsList.Cell]> {
            self.resutaurantService.fetchRestaurants().map{
                $0.map{ViewModels.RestaurantsList.Cell(restaurant: $0)}
            }
            
        }
        
    }
    
}

extension ViewModels.RestaurantsList {
    func configure(on VC : Controllers.RestaurantsList) {
        
        VC.title = self.title
 
    }
}
