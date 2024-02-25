//
//  ViewController.swift
//  Tab Bar Controller
//
//  Created by Fazıl Demircan on 22.02.2024.
//

import UIKit

class ViewController: UIViewController {

    var profileCounter = 0
    var workCounter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let tabItems = tabBarController?.tabBar.items{
            let item = tabItems[0]
            item.badgeValue = "3"
        }
        let appearance = UITabBarAppearance()
        appearance.backgroundColor = UIColor.systemIndigo
        
        colorChange(itemAppearance: appearance.stackedLayoutAppearance)
        
        tabBarController?.tabBar.standardAppearance = appearance
        tabBarController?.tabBar.scrollEdgeAppearance = appearance
    }

    func colorChange(itemAppearance:UITabBarItemAppearance){
        //selected
        itemAppearance.selected.iconColor = UIColor.systemOrange
        itemAppearance.selected.titleTextAttributes = [.foregroundColor: UIColor.systemOrange]
        itemAppearance.selected.badgeBackgroundColor = UIColor.systemMint
        //normal
        itemAppearance.normal.iconColor = UIColor.white
        itemAppearance.normal.titleTextAttributes = [.foregroundColor: UIColor.white]
        itemAppearance.normal.badgeBackgroundColor = UIColor.lightGray
    }
}

