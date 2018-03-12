//
//  Fractions.swift
//  Fractions
//
//  Created by Shweta Prakash on 2/2/18.
//  Copyright © 2018 Shweta Prakash. All rights reserved.
//

import Foundation

class Fraction {
    
    var num: Int;   // Numerator
    var den: Int;   // Denominator
   
    var decimal: Float {
        get {
            // num and den are of type Int, therefore,
            // they need to be explicitly converted to Floats
            return Float(self.num)/Float(self.den);
        }
    }
    
    var description: String {
        return "\(self.num)/\(self.den)"
    }
    
    init() {
        
        self.num = 0
        self.den = 1
    }
   
    init(num : Int, den : Int) {
        // Check the denominator...
        assert(den != 0, "Denominator cannot be zero")
        
        self.num = num
        self.den = den
    }
    
    func add(f: Fraction) -> Fraction {
        var result: Fraction = Fraction()
        result.num = num * f.den + den * f.num
        result.den = den * f.den
        result.reduce()
        return result
    }
    
    func subtract(f: Fraction) -> Fraction {
        var result: Fraction = Fraction()
        result.num = self.num * f.den - den * f.num
        result.den = den * f.den
        result.reduce()
        return result
    }
    
    func multiply(f: Fraction) -> Fraction {
        var result: Fraction = Fraction()
        result.num = num * f.num
        result.den = den * f.den
        result.reduce()
        return result
    }
    
    func divide(f: Fraction) -> Fraction {
        var result: Fraction = Fraction()
        result.num = num * f.den
        result.den = den * f.num
        result.reduce()
        return result
    }
    
    func reduce() {
        let sign = num >= 0 ? 1:-1
        var u = num * sign
        var v = den
        var r: Int
        while v != 0 {
            r = u % v
            u = v
            v = r
        }
        num /= u * sign
        den /= u
    }

    
    
}


