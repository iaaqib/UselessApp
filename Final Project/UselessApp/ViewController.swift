//
//  ViewController.swift
//  UselessApp
//
//  Created by aaqib.hussain on 12.01.20.
//  Copyright © 2020 Kode Snippets. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var welcomeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setTheme()
    }
    
    private func setTheme() {
        let appName = Bundle.main.object(forInfoDictionaryKey: "CFBundleDisplayName") as? String ?? ""
        welcomeLabel.text = "Welcome to \(appName)"
        navigationController?.navigationBar.barTintColor = UIColor.themeColor
        welcomeLabel.textColor = UIColor.themeTextColor
        welcomeLabel.font = UIFont(name: Font.themeBoldFont, size: 24)
    }
}

