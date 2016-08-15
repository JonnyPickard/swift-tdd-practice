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
        
        return string.characters.reduce(0) { $0 + (vowels.contains($1) ? 1 : 0) }
    }
    
    func makeHeadline(string: String) -> String {
        let words = string.componentsSeparatedByString(" ")
        
        let headline = words.map {
            word in
            
            let firstCharacter = word[word.startIndex]
            
            let remainingCharacters = word.substringWithRange(Range<String.Index>(word.startIndex.advancedBy(1)..<word.endIndex))
            
            return "\(String(firstCharacter).uppercaseString)\(remainingCharacters.lowercaseString)" }.joinWithSeparator(" ")
        
        return headline
    }
    
    /* - Important built in functions -
    
     XCTAssertTrue - expression is true
     XCTAssertFalse - expression is false
     XCTAssertEqual - two expressions are equal
     XCTAssertEqualWithAccuracy - two expressions are the same - has accuracy parameter
     XCTAssertNotEqual - two expressions are not the same
     XCTAssertNil - expression is nil
     XCTAssertNotNil - expression is not il
     XCTFail - always fails
 
    */


}

