//
//  MainRouter.swift
//  WeatherApp
//
//  Created by unitlabs on 1/26/21.
//  Copyright © 2021 saraKhater. All rights reserved.
//

import UIKit

class MainRouter: MainRouterDelegate {

    static let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)

    static func createMainViewController(_ view: MainView?) -> UIViewController {
        guard let vc = view ?? storyboard.instantiateViewController(withIdentifier: "MainController") as? MainView else {
            return UIViewController()
        }

        let presenter: MainPresenterDelegate & MainInteractorOutputDelegate = MainPresenter()
        let interactor: MainInteractorInputDelegate  = MainInteractor(nil)
        let router: MainRouterDelegate = MainRouter()

        vc.presenter = presenter
        presenter.view = vc
        presenter.router = router
        presenter.interactor = interactor
        interactor.presenter = presenter

        return vc
    }

    func dismiss(view: UIViewController) {
        view.dismiss(animated: true, completion: nil)
    }
}