//
//  ViewController.swift
//  real-recognizes-real
//
//  Created by Jonathan Bateman on 7/15/25.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    private var accounts: [Account] = Account.getAccounts()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.dataSource = self
       
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return accounts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
//        let cell = tableView.dequeueReusableCell(withIdentifier: "AccountCell", for: indexPath) as! AccountCell
//        
//        let account = accounts[indexPath.row]
//        print(account)
//        print(account.name)
//        print(account.OTP)
//        cell.accountNameLabel.text = account.name
//        cell.accountOTPLabel.text = account.OTP
//        
//        return cell
//        
        let cell = UITableViewCell()
        
        let account = accounts[indexPath.row]
        
        cell.textLabel?.text = account.name
        
        return cell
    }
}

