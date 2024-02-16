//
//  ViewControllerB.swift
//  TransitionBetweenPages
//
//  Created by Fazıl Demircan on 16.02.2024.
//

import UIKit

class ViewControllerB: UIViewController {

    @IBOutlet weak var tag: UILabel!
    
    var message:String?
    var person = Persons()
    override func viewDidLoad() {
        super.viewDidLoad()

        print("Person id: \(person.personID!) Person name: \(person.personName!)")
        tag.text = message!
    }


}
