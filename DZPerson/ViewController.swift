//
//  ViewController.swift
//  DZPerson
//
//  Created by Admin on 25.09.22.
//

import UIKit

struct Person {
    var name: String
    var surname: String
    
}

class Pet {
    var name: String
    var ownerName: String
    
    init(name: String, ownerName: String) {
        self.name = name
        self.ownerName = ownerName
    }
}

class ViewController: UIViewController {
    var person = Person(name: "Valera", surname: "Valerun")
    var pet = Pet(name: "Dog", ownerName: "Valera")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UserDefaults.standard.set(person.name, forKey: "personName")
        UserDefaults.standard.set(person.surname, forKey: "personSurname")
        
        UserDefaults.standard.set(pet.name, forKey: "petName")
        UserDefaults.standard.set(pet.ownerName, forKey: "petOwner")
        
        if let name = UserDefaults.standard.string(forKey: "petName"),
           let ownerName = UserDefaults.standard.string(forKey: "petOwner") {
            let pet = Pet(name: name, ownerName: ownerName)
            print(pet.name)
            print(pet.ownerName)
        }
    }
}
