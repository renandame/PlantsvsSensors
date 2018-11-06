//
//  ViewControllerLogin.swift
//  telas
//
//  Created by student on 05/11/18.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit

class ViewControllerLogin: UIViewController {
    
    
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
    
    @IBAction func loginButton(_ sender: UIButton) {
        if email.text == ViewControllerCadastraConta.emailLogin  && senha.text == ViewControllerCadastraConta.senhaLogin
        {
            performSegue(withIdentifier: "login", sender: nil)
            
        } else if email.text == "" || senha.text == "" {
            let alertController = UIAlertController(title: "Alerta", message:
                "E-mail e/ou senha vazios", preferredStyle: UIAlertControllerStyle.alert)
            alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default,handler: nil))
            
            self.present(alertController, animated: true, completion: nil)
        }else if senha.text != ViewControllerCadastraConta.senhaLogin || email.text != ViewControllerCadastraConta.emailLogin{
            let alertController = UIAlertController(title: "Alerta", message:
                "Email e/ou Senhas incorretos", preferredStyle: UIAlertControllerStyle.alert)
            alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default,handler: nil))
            
            self.present(alertController, animated: true, completion: nil)
        }
        
        
    }
    
}
