//
//  ViewControllerCadastraConta.swift
//  telas
//
//  Created by student on 05/11/18.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit

class ViewControllerCadastraConta: UIViewController {
    static var emailLogin:String = "teste@teste.com"
    static var senhaLogin:String = "teste"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var senha: UITextField!
    @IBOutlet weak var confirmaSenha: UITextField!
    
    @IBAction func button(_ sender: UIButton) {
        
        if  senha.text == confirmaSenha.text && email.text != "" && senha.text != ""{
            ViewControllerCadastraConta.emailLogin = email.text!
            ViewControllerCadastraConta.senhaLogin = senha.text!
            navigationController?.popViewController(animated: true)
        }
        else if email.text == "" || senha.text == "" {
            let alertController = UIAlertController(title: "Alerta", message:
                "E-mail e/ou senha vazios", preferredStyle: UIAlertControllerStyle.alert)
            alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default,handler: nil))
            
            self.present(alertController, animated: true, completion: nil)
        }
//        else if senha.text != confirmaSenha.text{
//            let alertController = UIAlertController(title: "Alerta", message:
//                "Senhas não coincidem", preferredStyle: UIAlertControllerStyle.alert)
//            alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default,handler: nil))
//            
//            self.present(alertController, animated: true, completion: nil)
//        }
        
        
    }

   
}
