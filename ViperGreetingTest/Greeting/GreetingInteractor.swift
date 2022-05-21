//
//  GreetingInteractor.swift
//  ViperGreetingTest
//
//  Created by Alexey on 21.05.2022.
//

protocol GreetingInteractorInputProtocol: AnyObject {
    init(presenter: GreetingInteractorOutputProtocol)
    func provideGreetingData()
}

protocol GreetingInteractorOutputProtocol: AnyObject {
    func receiveGreetingData(greetingData: GreetingData)
}

class GreetingInteractor: GreetingInteractorInputProtocol {
    
    unowned let presenter: GreetingInteractorOutputProtocol
    
    required init(presenter: GreetingInteractorOutputProtocol) {
        self.presenter = presenter
    }
    
    func provideGreetingData() {
        let person = Person(name: "Alexey", surname: "Radomskiy")
        let greeting = GreetingData(name: person.name, surname: person.surname)
        presenter.receiveGreetingData(greetingData: greeting)
    }
}
