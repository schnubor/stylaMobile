//
//  ViewController.swift
//  Mobilemag
//
//  Created by schnubor on 17/04/16.
//  Copyright © 2016 Styla GmbH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var showButton: UIButton!
    
    override func viewDidLoad() {
        UIApplication.sharedApplication().statusBarStyle = .LightContent
        
        showButton.layer.cornerRadius = 0
        showButton.layer.borderColor = UIColor.whiteColor().CGColor
        showButton.layer.borderWidth = 1
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let DestViewController : WebView = segue.destinationViewController as! WebView
        DestViewController.clientName = textField.text ?? ""
    }

}

