//
//  ViewController.swift
//  URLSchemesPOC
//
//  Created by Sravan on 07/09/20.
//  Copyright © 2020 Sravan Kumar Pabolu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnOpenSalesForceTapped(_ sender: UIButton) {
        guard let appUrl = URL(string: "ms-outlook://") else { return }
        guard let appStoreURL = URL(string: "itms://apps.apple.com/au/app/microsoft-outlook/id951937596") else { return }
        
        if UIApplication.shared.canOpenURL(appUrl) {
           UIApplication.shared.open(appUrl, options: [:], completionHandler: nil)
        }
        else {
           UIApplication.shared.open(appStoreURL, options: [:], completionHandler: nil)
        }
    }

}

