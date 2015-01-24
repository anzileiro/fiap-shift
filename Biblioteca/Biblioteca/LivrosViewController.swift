//
//  LivrosViewController.swift
//  Biblioteca
//
//  Created by Usuário Convidado on 24/01/15.
//  Copyright (c) 2015 Anderson Anzileiro. All rights reserved.
//

import UIKit

class LivrosViewController: UIViewController, DetalheLivroViewControllerDelegate {

    @IBOutlet weak var livroFavoritoLabel: UILabel!
    
    private var livrosArray = ["Futebol - Uma janela para o Brasil", "Manga", "A terra dos sonhos", "Como se faz"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    
        var vc = segue.destinationViewController as DetalheLivroViewController
        
        
        
        if let i = sender?.tag{
            vc.nomeLivro = livrosArray[i]
            vc.delegate = self
        }
    
    }


    @IBAction func visualizarLivro(sender: UIButton){
        performSegueWithIdentifier("livroParaDetalheSegue", sender: sender)
    }
    
    func livroFavoritado(livro: String) {
        livroFavoritoLabel.text = "Favorito: " + livro;
    }
}
