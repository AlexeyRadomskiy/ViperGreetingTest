//
//  GreetingConfigurator.swift
//  ViperGreetingTest
//
//  Created by Alexey on 21.05.2022.
//

protocol GreetingConfiguratorInputProtocol {
    func configure(with view: GreetingViewController)
}

class GreetingConfigurator: GreetingConfiguratorInputProtocol {
    
    func configure(with view: GreetingViewController) {
        let presenter = GreetingPresenter(view: view)
        let interactor = GreetingInteractor(presenter: presenter)
        
        view.presenter = presenter
        presenter.interactor = interactor
    }
}
