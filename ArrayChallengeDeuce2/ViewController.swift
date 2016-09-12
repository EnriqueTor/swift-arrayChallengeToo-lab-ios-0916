//
//  ViewController.swift
//  ArrayChallengeDeuce2
//
//  Created by James Campagno on 7/7/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // This represents our deliLine.
    var deliLine: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    
    // Create your methods here

    func addNameToDeliLine (name:String) -> String {
            
            var gretting = ""
            
            if name == "Billy Crystal" {
                deliLine.insert(name, atIndex: 0)
                gretting = "Welcome Billy! You can sit wherever you like."
            }
            else if name == "Meg Ryan" {
                deliLine.insert(name, atIndex: 0)
                gretting = "Welcome Meg! You can sit wherever you like."
            }
            else if deliLine.count == 0 {
                deliLine.append(name)
                gretting = "Welcome \(name), you're first in line!"
            }
            else {
                deliLine.append(name)
                gretting = "Welcome \(name), you're number \(deliLine.count) in line."
            }
            return gretting
    }

    func nowServing() -> String {
        
        var serving = ""
        
            if deliLine.isEmpty {
                serving = "There is no one to be served."
            }
            else {
                serving = "Now serving \(deliLine[0])!"
                deliLine.removeFirst()
            }
        
        return serving
    }

    func deliLineDescription() -> String {
        
        var line = ""
        var finalLine = ""
        
        if deliLine.isEmpty {
            finalLine = "The line is currently empty."
        }
        else {
            for (index,name) in deliLine.enumerate() {
                line += "\n\(index + 1). \(name)"
            }
            finalLine = "The line is:" + line
        }
        return finalLine
    }
}



