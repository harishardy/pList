//
//  ViewController.swift
//  pList
//
//  Created by Harish Hardy on 25/05/19.
//  Copyright © 2019 iosdev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
  

    override func viewDidLoad() {
        
        if let pathX = Bundle.main.path(forResource: "category", ofType: "plist")
        {
            print(pathX)
            
            if let arrayX = NSArray(contentsOfFile: pathX) as? [String: Any]
            {
                //print(dictionary)
                //print(arrayX["cars"] ?? "not valid option")
                //print(arrayX["smartPhones"] ?? "not valid option")
                print(arrayX["programmingLanguages"] ?? "not valid option")
            }
            
            if let dictionaryX = NSDictionary(contentsOfFile: pathX) as? [String: Any]
            {
                //print(dictionary)
                print(dictionaryX["car"] ?? "not valid option")
                print(dictionaryX["phone"] ?? "not valid option")
                print(dictionaryX["language"] ?? "not valid option")
                print(dictionaryX["cars"] ?? "not valid option")
                print(dictionaryX["smartPhones"] ?? "not valid option")
            }
            
        }
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

