//
//  WebView.swift
//  Mobilemag
//
//  Created by schnubor on 17/04/16.
//  Copyright © 2016 Styla GmbH. All rights reserved.
//

import Foundation
import UIKit

class WebView : UIViewController {
    
    @IBOutlet weak var navbar: UINavigationItem!
    @IBOutlet weak var webview: UIWebView!
    
    var clientName = String()
    
    func loadAdressURL(){
        let URL = NSURL(string: "http://live.styla.com/clients/" + clientName)
        let request:NSURLRequest = NSURLRequest(URL:URL!)
        webview.loadRequest(request)
    }
    
    override func viewDidLoad() {
        UIApplication.sharedApplication().statusBarStyle = .Default
        navbar.title = clientName
        loadAdressURL()
    }
}