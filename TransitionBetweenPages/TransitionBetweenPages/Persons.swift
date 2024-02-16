//
//  Persons.swift
//  TransitionBetweenPages
//
//  Created by Fazıl Demircan on 16.02.2024.
//

import Foundation

class Persons{
    var personID:Int?
    var personName:String?
    
    init(){}
    
    init(personID:Int,personName:String){
        self.personID = personID
        self.personName = personName
    }
}
