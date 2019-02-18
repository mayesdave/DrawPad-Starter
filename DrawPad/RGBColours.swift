//
//  RGBColours.swift
//  DrawPad
//
//  Created by David Mayes on 18/2/19.
//  Copyright © 2019 David Mayes. All rights reserved.
//

import UIKit

struct RGBColour {
    
    var red: CGFloat
    var green: CGFloat
    var blue: CGFloat
    
    var tuple: (CGFloat, CGFloat, CGFloat) {
        return (self.red, self.green, self.blue)
    }
    
    private static let cgiFoatColours: [(CGFloat, CGFloat, CGFloat)] = [
        (0, 0, 0),
        (105.0 / 255.0, 105.0 / 255.0, 105.0 / 255.0),
        (1.0, 0, 0),
        (0, 0, 1.0),
        (51.0 / 255.0, 204.0 / 255.0, 1.0),
        (102.0 / 255.0, 204.0 / 255.0, 0),
        (102.0 / 255.0, 1.0, 0),
        (160.0 / 255.0, 82.0 / 255.0, 45.0 / 255.0),
        (1.0, 102.0 / 255.0, 0),
        (1.0, 1.0, 0),
        (1.0, 1.0, 1.0),
        ]
    
    static var colours: [RGBColour] {
        return cgiFoatColours.map { RGBColour(red: $0, green: $1, blue: $2) }
    }
    
}

extension RGBColour: Comparable {
    
    static func < (lhs: RGBColour, rhs: RGBColour) -> Bool {
        return (lhs.red == rhs.red) && (lhs.green == rhs.green) && (lhs.blue == rhs.blue)
    }
    
}

