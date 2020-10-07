//
//  PopUpViewController.swift
//  BrowserApp
//
//  Created by Madina Tazhiyeva on 10/4/20.
//  Copyright © 2020 Madina Tazhiyeva. All rights reserved.
//

import UIKit



class PopUpViewController: UIViewController {
    
    @IBOutlet weak var popupView: UIView!
    @IBOutlet weak var newWebsiteURL: UITextField!
    @IBOutlet weak var newWebsiteName: UITextField!
    @IBOutlet weak var saveButton: UIButton!
    @IBOutlet weak var cancelButton: UIButton!
    
    var doneSaving: (() -> ())?
    
    
    
    @IBAction func addNewWebsite(_ sender: Any) {
        
        if let doneSaving = doneSaving{
            doneSaving()
        }
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func cancelAddingNewWebsite(_ sender: Any) {
        dismiss(animated: true)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        popupView.layer.cornerRadius = 20
    }
}
