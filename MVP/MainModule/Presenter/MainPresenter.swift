//
//  MainPresenter.swift
//  MVP
//
//  Created by Владислав on 26.08.2021.
//

import Foundation

protocol MainViewProtocol {
    func setGreeting(greeting: String)
}

protocol MainViewPresenterProtocol {
    init(view: MainViewProtocol, person: Person)
    
    func showGreeting()
}

class MainPresenter: MainViewPresenterProtocol {
    let view: MainViewProtocol!
    let person: Person
    
    required init(view: MainViewProtocol, person: Person) {
        self.view = view
        self.person = person
    }
    
    func showGreeting() {
        let greeting = self.person.firstName + " " + self.person.lastName
        self.view.setGreeting(greeting: greeting)
    }
    
    
    
}
