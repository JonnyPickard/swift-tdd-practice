//
//  ViewController.swift
//  tdd-swift-1
//
//  Created by Jonny Pickard on 15/08/2016.
//  Copyright © 2016 Jonny. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfVowelsInString(string: String) -> Int {
        let vowels: [Character] = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"] // Without specifying the type character this would be implicitly defined as an array of strings.
        
        var numberOfVowels = 0
        for character in string.characters {
            if vowels.contains(character) {
                numberOfVowels += 1
            }
        }
        
        return numberOfVowels
    }


}

