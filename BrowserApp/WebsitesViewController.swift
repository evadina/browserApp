//
//  WebsitesViewController.swift
//  BrowserApp
//
//  Created by Madina Tazhiyeva on 10/4/20.
//  Copyright © 2020 Madina Tazhiyeva. All rights reserved.
//

import UIKit

class WebsitesViewController: UITableViewController {
   
    
    
    @objc weak var siteTableView: UITableView?
    
    var websitesList:[Websites] = []
      
    func createWebsite(websites: Websites){
          websitesList.append(websites)
         }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Sites"
    }

    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return websitesList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "websiteNameCell", for: indexPath)
        cell.textLabel?.text = websitesList[indexPath.row].name
        return cell
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "showSiteSegue"{
            if let navcon = segue.destination as? UINavigationController{
                if let destination = navcon.visibleViewController as? DetailViewController{
                if let row = tableView.indexPathForSelectedRow?.row{
                    destination.helpingURL = websitesList[row].url!
                    destination.navigationItem.title = websitesList[row].name
                    }
                }
            }
        }
        if segue.identifier == "addWebsite"{
            let popup = segue.destination as! PopUpViewController
            popup.doneSaving = {
                self.siteTableView?.reloadData()
                
            }
        }
       
    }
    
   
}
