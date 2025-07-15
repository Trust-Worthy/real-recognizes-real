//
//  ViewController.swift
//  real-recognizes-real
//
//  Created by Jonathan Bateman on 7/15/25.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UISearchBarDelegate{
    

    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var accountsTableView: UITableView!
    
    var accounts: [Account] = []
    var filteredAccounts: [Account] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        accountsTableView.dataSource = self
        searchBar.delegate = self
        
        
        accounts = [
                    Account(name: "Alice @ Gmail", otp: "123456"),
                    Account(name: "Bob @ Work", otp: "789012"),
                ]
        filteredAccounts = accounts
    }
    
    // MARK: tableView functions
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filteredAccounts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = accountsTableView.dequeueReusableCell(withIdentifier: "AccountCell", for: indexPath)
        
        let account = filteredAccounts[indexPath.row]
        
        cell.textLabel?.text = account.name
        cell.detailTextLabel?.text = account.otp
        
        return cell
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        
        filteredAccounts = searchText.isEmpty ? accounts : accounts.filter {
            $0.name.lowercased().contains(searchText.lowercased())
        }
        
        // reload the tableview after any changes
        accountsTableView.reloadData()
    }

    struct Account {
        let name: String
        let otp: String
    }
}

	
