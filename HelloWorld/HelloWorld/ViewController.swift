//
//  ViewController.swift
//  HelloWorld
//
//  Created by Usuário Convidado on 17/01/15.
//  Copyright (c) 2015 Anderson Anzileiro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var helloLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sayHello(sender: UIButton) {
        
        helloLabel.text = "Hello World";
        
    }

    @IBAction func clear(sender: UIButton) {
        helloLabel.text = "";
    }
}

