//
//  ViewModels.RestaurantsList.Cell.swift
//  RXSwiftTest
//
//  Created by Bahman on 12/3/22.
//

import Foundation
import UIKit

extension ViewModels.RestaurantsList {
    
    final class Cell {
        
        private let restaurant : Models.Restaurant
        
        init(restaurant: Models.Restaurant) {
            self.restaurant = restaurant
        }
        
        var displayableTitle : String {
            return self.restaurant.name + " - " + self.restaurant.cuisine.rawValue.capitalized
        }
        
    }
    
}

extension ViewModels.RestaurantsList.Cell {
    func configure(on view : UITableViewCell) {
        view.textLabel?.text = self.displayableTitle
    }
}
