//
//  MainViewController.swift
//  MVP
//
//  Created by Владислав on 26.08.2021.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var greetingLabel: UILabel!
    
    var presenter: MainViewPresenterProtocol!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func didTapButtonAction(_ sender: Any) {
        self.presenter.showGreeting()
    }

}

extension MainViewController: MainViewProtocol {
    func setGreeting(greeting: String) {
        self.greetingLabel.text = greeting
    }
}
