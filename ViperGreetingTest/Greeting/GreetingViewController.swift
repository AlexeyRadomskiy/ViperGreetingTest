//
//  GreetingViewController.swift
//  ViperGreetingTest
//
//  Created by Alexey on 21.05.2022.
//

import UIKit

protocol GreetingViewInputProtocol: AnyObject {
    func setGreeting(_ greeting: String)
}

protocol GreetingViewOutputProtocol {
    init(view: GreetingViewInputProtocol)
    func didTapShowGreetingButton()
}

class GreetingViewController: UIViewController {

    @IBOutlet var greetingLabel: UILabel!
    var presenter: GreetingViewOutputProtocol!
    
    private let configurator: GreetingConfiguratorInputProtocol = GreetingConfigurator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurator.configure(with: self)
    }

    @IBAction func showGreetingPressed() {
        presenter.didTapShowGreetingButton()
    }
    
}

// MARK: - GreetingViewInputProtocol
extension GreetingViewController: GreetingViewInputProtocol {
    func setGreeting(_ greeting: String) {
        greetingLabel.text = greeting
    }
}
