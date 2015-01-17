//
//  ViewController.swift
//  Exemplo_1
//
//  Created by Usuário Convidado on 17/01/15.
//  Copyright (c) 2015 Anderson Anzileiro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var veiculoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var meuCarro = Veiculo()
        veiculoLabel.text = meuCarro.alerta()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

