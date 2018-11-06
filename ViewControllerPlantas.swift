//
//  ViewControllerPlantas.swift
//  telas
//
//  Created by student on 05/11/18.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit

class ViewControllerPlantas: UIViewController, UITableViewDataSource, UITableViewDelegate{

    @IBOutlet weak var tableView: UITableView!
    var umidade: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.reloadData()
        guard let url = NSURL(string: "https://iotpucrs15.mybluemix.net/get") else { return }
        
        let task = URLSession.shared.dataTask(with: url as URL) { (data, response, error) in
            
            guard let error = error else {
                
                guard let data = data, let json = try? JSONSerialization.jsonObject(with: data, options: .allowFragments) as? [[String : String]], let newestEntry = json?.first, let payload = newestEntry["payload"] else { return }
                
                self.umidade = payload
                
                return
            }
            
            print(error.localizedDescription)
            
            }.resume()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        tableView.reloadData()
     //   print(tableView.)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ViewControllerCadastraPlanta.nomePlanta.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "planta")
        cell?.textLabel?.text = ViewControllerCadastraPlanta.nomePlanta[indexPath.row]
        cell?.detailTextLabel?.text = ViewControllerCadastraPlanta.especiePlanta[indexPath.row]
        cell?.detailTextLabel?.text = "Umidade: " + umidade + "%"
        return cell!
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
                    ViewControllerCadastraPlanta.nomePlanta.remove(at: indexPath.row)
                    ViewControllerCadastraPlanta.especiePlanta.remove(at: indexPath.row)
                    tableView.deleteRows(at: [indexPath], with: .fade)
                }
   }
