//
//  ModuleBuilder.swift
//  MVP
//
//  Created by Владислав on 30.08.2021.
//

import UIKit

protocol Builder {
    static func createMainModule() -> UIViewController
}

class ModuleBuilder: Builder {
    static func createMainModule() -> UIViewController {
        let model = Person(firstName: "Vladislav", lastName: "Kryvaschoky")
        let view = MainViewController()
        let presenter = MainPresenter(view: view, person: model)
        
        view.presenter = presenter
        return view
    }

}
