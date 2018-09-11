//
//  ViewController.swift
//  BadInstagram
//
//  Created by Mateusz Chojnacki on 11/09/2018.
//  Copyright © 2018 Mateusz Chojnacki. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func goToInstagramOnClickButton(_ sender: Any) {
        if let appURL = URL(string: "instagram://"){
            let canOpen = UIApplication.shared.canOpenURL(appURL)
            print(canOpen)
            
            let appName = "Instagram"
            let appScheme = "\(appName)://"
            let appSchemaURL =  URL(string: appScheme)
            
            if UIApplication.shared.canOpenURL(appSchemaURL! as URL){
                UIApplication.shared.open(appSchemaURL!, options: [:], completionHandler: nil)
            }else{
                let alert = UIAlertController(title: "\(appName) Error...", message: "The app named \(appName) was not found please install from appstore", preferredStyle: .alert)
                self.present(alert, animated: true,completion: nil)
            }
        }
    }
    

}

