//
//  ViewController.swift
//  TransitionBetweenPages
//
//  Created by Fazıl Demircan on 16.02.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func send(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let nextViewController = storyboard.instantiateViewController(withIdentifier: "pageB") as! ViewControllerB
        
        let messageToSend = inputField.text
        nextViewController.message = messageToSend!
        
        let personToGo = Persons(personID: 222, personName: "Ahmet")
        nextViewController.person = personToGo
        
        // Modal Transition
        //self.present(nextViewController,animated: true,completion: nil)
        
        self.navigationController?.pushViewController(nextViewController, animated: true)
    }
}

