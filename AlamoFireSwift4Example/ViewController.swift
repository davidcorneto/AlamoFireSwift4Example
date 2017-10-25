//
//  ViewController.swift
//  AlamoFireSwift4Example
//
//  Created by Vasudha Jags on 10/25/17.
//  Copyright © 2017 Vasudha J. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let manager = LoadWebService()
        manager.performParsing()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

