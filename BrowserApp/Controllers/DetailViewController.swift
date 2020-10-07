//
//  DetailViewController.swift
//  BrowserApp
//
//  Created by Madina Tazhiyeva on 10/4/20.
//  Copyright © 2020 Madina Tazhiyeva. All rights reserved.
//

import UIKit
import WebKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var webView: WKWebView!
    var helpingURL: String = "https://www.google.com/?client=safari"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        webView.backgroundColor = UIColor.clear
       
            let url = URL (string: helpingURL)
            let request = URLRequest(url: url!)
            webView.load(request)
       
            print("url is nil")
        }
}
    
    

