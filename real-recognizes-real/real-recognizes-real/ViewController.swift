//
//  ViewController.swift
//  real-recognizes-real
//
//  Created by Trust-Worthy on 7/15/25.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UISearchBarDelegate{
    
    @IBOutlet weak var tableView: UITableView!
    
    var accounts: [Account] = []
    var filteredAccounts: [Account] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.dataSource = self
        
        
        self.accounts = [ Account(name: "Alice @ Gmail", otp: "123456"), Account(name: "Bob @ Work", otp: "789012")]
        filteredAccounts = accounts
    }
    
    // MARK: tableView functions
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filteredAccounts.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "AccountCell", for: indexPath) as! AccountCell
        
        let account = accounts[indexPath.row]
        
        cell.textLabel?.text = account.name
        cell.detailTextLabel?.text = account.otp
        
        return cell
        
    
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        
        filteredAccounts = searchText.isEmpty ? accounts : accounts.filter {
            $0.name.lowercased().contains(searchText.lowercased())
        }
        
        // reload the tableview after any changes
        tableView.reloadData()
    }

    
}

	
