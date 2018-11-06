//
//  ViewControllerCadastraPlanta.swift
//  telas
//
//  Created by student on 05/11/18.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit

class ViewControllerCadastraPlanta: UIViewController {
    static var nomePlanta:[String] = []
    static var especiePlanta:[String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBOutlet weak var nome: UITextField!
    @IBOutlet weak var especie: UITextField!

    @IBAction func botaoCadastra(_ sender: UIButton) {
        ViewControllerCadastraPlanta.nomePlanta.append(nome.text!)
        ViewControllerCadastraPlanta.especiePlanta.append(especie.text!)
       // print(ViewControllerCadastraPlanta.nomePlanta[0])
        dismiss(animated: true, completion: nil)
    }
    

}
