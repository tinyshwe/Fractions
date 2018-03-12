//
//  main.swift
//  Fractions
//
//  Created by Satya Prakash on 2/2/18.
//  Copyright © 2018 Shweta Prakash. All rights reserved.
//

import Foundation

var obj = Fraction(num:3 , den:4);
var obj1 = Fraction(num:6 , den:3);
var result = obj.add(f: obj1).description
print("Result after addition: ")
print(result)
var result1 = obj.subtract(f: obj1).description
print("Result after substraction: ")
print(result1)
var result2 = obj.multiply(f:  obj1).description
print("Result after multiplication: ")
print(result2)
var result3 = obj.divide(f: obj1).description
print("Result after division: ")
print(result3)
