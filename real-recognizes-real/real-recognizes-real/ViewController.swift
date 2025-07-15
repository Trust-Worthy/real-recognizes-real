//
//  ViewController.swift
//  real-recognizes-real
//
//  Created by Jonathan Bateman on 7/15/25.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    private var accounts: [Account] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.dataSource = self
        
        let account1 = Account(name: "Alice", OTP: "123456")
        
        let account2 = Account(name:"Bob", OTP: "78999")
        
        accounts.append(account1)
        accounts.append(account2)
    }

    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        
        cell.textLabel?.text = "Row \(indexPath.row)"
        
        return cell
    }
}

