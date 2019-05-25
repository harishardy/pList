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
            
            if let dictionaryX = NSDictionary(contentsOfFile: pathX) as? [String: Any]
            {
                //print(dictionary)
                print(dictionaryX["state"] ?? "not valid option")
                print(dictionaryX["country"] ?? "not valid option")
                print(dictionaryX["language"] ?? "not valid option")
                //print(dictionaryX["cars"] ?? "not valid option")
                //print(dictionaryX["smartPhones"] ?? "not valid option")
            }
            
        }
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

