//
//  Theme.swift
//  Themes
//
//  Created by Lee on 11/7/21.
//

import UIKit

class Theme {
    static var current: ThemeProtocol = DarkTheme()
}

protocol ThemeProtocol {
    var mainFontName: String { get }
    var accent: UIColor { get }
    var background: UIColor { get }
    var tint: UIColor { get }
    var logo: UIImage { get }
}

class LightTheme: ThemeProtocol {
    var logo: UIImage = UIImage(named: "apple") ?? UIImage()
    var mainFontName = "FugazOne-Regular"
    var accent = UIColor(named: "accent")!
    var background  = UIColor(named: "background")!
    var tint = UIColor(named: "tint")!
    
}

class DarkTheme: ThemeProtocol {
    var logo: UIImage = UIImage(named: "android") ?? UIImage()
    var mainFontName = "FugazOne-Regular"
    var accent = UIColor(named: "background")!
    var background  = UIColor(named: "accent")!
    var tint = UIColor(named: "tint")!
}



class CustomView: UIView {
    override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
    }
    
    func setupView() {
        self.backgroundColor = Theme.current.background
    }
}


class CustomButton: UIButton {
    override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
    }
    
    func setupView() {
        print("===================Theme.current  \(Theme.current)======================")
        self.backgroundColor = Theme.current.background
        self.setTitleColor(Theme.current.tint, for: .normal)
    }
}

class CustomLabel: UILabel {
    override func awakeFromNib() {
        super.awakeFromNib()
        self.backgroundColor = Theme.current.accent
        self.textColor = Theme.current.tint
    }
}
