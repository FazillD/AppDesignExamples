//
//  ViewController.swift
//  NavigationController
//
//  Created by Fazıl Demircan on 20.02.2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Baslik"
        self.navigationItem.prompt = "Aciklama"
        
        navigationController?.navigationBar.prefersLargeTitles = true
        
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = UIColor.red
        appearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        
        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.barStyle = .black
         
        navigationController?.navigationBar.isTranslucent = true
        
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
    }


    @IBAction func addButton(_ sender: Any) {
        print("clicked")
    }
}

