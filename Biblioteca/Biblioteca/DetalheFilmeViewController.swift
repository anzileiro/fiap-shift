//
//  DetalheFilmeViewController.swift
//  Biblioteca
//
//  Created by Usuário Convidado on 24/01/15.
//  Copyright (c) 2015 Anderson Anzileiro. All rights reserved.
//

import UIKit

class DetalheFilmeViewController: UIViewController {

    var nomeFilmeText:String = ""
    var nomeImagem:String = ""
    
    @IBOutlet weak var nomeFilme: UILabel!
    
    @IBOutlet weak var filmeImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nomeFilme.text = nomeFilmeText
        filmeImageView.image = UIImage(named: nomeImagem)
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func fechar(sender: UIButton) {
        dismissViewControllerAnimated(true, completion: nil)
    }
}
