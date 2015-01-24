//
//  DetalheLivroViewController.swift
//  Biblioteca
//
//  Created by Usuário Convidado on 24/01/15.
//  Copyright (c) 2015 Anderson Anzileiro. All rights reserved.
//

import UIKit

protocol DetalheLivroViewControllerDelegate : class {
    
    func livroFavoritado(livro: String)

}


class DetalheLivroViewController: UIViewController {

    var nomeLivro:String = ""
    
    weak var delegate: DetalheLivroViewControllerDelegate?
    
    @IBOutlet weak var nomeLivroLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        nomeLivroLabel.text = nomeLivro
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func fechar() {
        dismissViewControllerAnimated(true, completion: nil)
    }

    @IBAction func marcarFavorito(){
        delegate?.livroFavoritado(nomeLivro)
        fechar()
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
