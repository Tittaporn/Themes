//
//  AnotherThemeViewController.swift
//  Themes
//
//  Created by Lee on 11/7/21.
//

import UIKit

class AnotherThemeViewController: UIViewController {
    // MARK: - Outlets
    @IBOutlet weak var imgTheme: UIImageView!
    
    // MARK: - Life Cycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = Theme.current.background
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        Theme.current = DarkTheme()
        view.backgroundColor = Theme.current.background
        imgTheme.image = Theme.current.logo
    }
}
