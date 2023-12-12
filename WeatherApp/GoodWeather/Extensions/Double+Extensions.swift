//
//  Double+Extensions.swift
//  GoodWeather
//
//  Created by koala panda on 2023/11/23.
//

import Foundation


extension Double {
    
    func formatAsDegree() -> String {
        return String(format: "%.0f°",self)
    }
    
}
