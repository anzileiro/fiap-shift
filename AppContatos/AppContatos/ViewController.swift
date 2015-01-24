//
//  ViewController.swift
//  AppContatos
//
//  Created by Usuário Convidado on 24/01/15.
//  Copyright (c) 2015 Anderson Anzileiro. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, SyncServerDelegate {

    @IBOutlet weak var nomeContatoTextField: UITextField!
    
    @IBOutlet weak var sexoSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var idadeLabel: UILabel!
    
    @IBOutlet weak var idadeSwitch: UISwitch!
    
    @IBOutlet weak var formaContatoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        /*
        var label:UILabel = UILabel()
        label.text = "Teste Label"
        label.frame = CGRectMake(50, 50, 150, 100)
        view.addSubview(label)
        */
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func viewWillAppear(animated: Bool) {
        println("View ficará visivel.")
    }
    
    override func viewDidAppear(animated: Bool) {
        println("View carregada na tela.")
    }
    
    
    @IBAction func idadeMudou(sender: UIStepper) {
        idadeLabel.text = "\(Int(sender.value))"
    }

    @IBAction func mudarFormaContato(sender: UIButton) {
        var alert = UIAlertController(title: "Contato", message: "escolha forma de contato", preferredStyle: .ActionSheet)
        
        alert.addAction(UIAlertAction(title: "Cancelar", style: .Cancel, handler: nil))
        
        alert.addAction(UIAlertAction(title: "Email", style: .Default, handler: {
                action in self.formaContatoLabel.text = action.title
            }))
        
        alert.addAction(UIAlertAction(title: "Telefone", style: .Default, handler: {
                action in self.formaContatoLabel.text = action.title
            }))
        
        presentViewController(alert, animated: true, completion: nil)
    }
    
    @IBAction func salvarContato(sender: UIButton) {
        var alert = UIAlertController(title: "Confirmacao", message: "Deseja realmente salvar contato.", preferredStyle: .Alert)
        
        alert.addAction(UIAlertAction(title: "Nao", style: .Cancel, handler: {
            _ in println("Alert - Nao")
        }))
        
        alert.addAction(UIAlertAction(title: "Sim", style: .Default, handler: {
            _ in println("Alert - Sim")
        
            println("Nome: \(self.nomeContatoTextField.text)")
            
            let sync = SyncServer()
            sync.delegate = self
            sync.sendInfo()
       
        }))
        
        presentViewController(alert, animated: true, completion: nil)
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        //esconder o teclado.
        textField.resignFirstResponder();
        return false
    }
    
    func infoSaved() {
        var alert = UIAlertController(title: "Sucesso", message: "contato salvo com sucesso.", preferredStyle: .Alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .Default, handler: {
            a in println("\(a.title)")
        }))
        
        presentViewController(alert, animated: true, completion: nil)
    }
}

