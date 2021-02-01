//
//  MainPresenter.swift
//  WeatherApp
//
//  Created by unitlabs on 1/26/21.
//  Copyright © 2021 saraKhater. All rights reserved.
//

import UIKit
class MainPresenter: MainPresenterDelegate {

    weak var view: MainDelegate?
    var interactor: MainInteractorInputDelegate?
    var router: MainRouterDelegate?

    func viewDidLoad() {

    }

    func dismiss() {
    	if let viewController = self.view as? UIViewController {
            self.router?.dismiss(view: viewController)
        }
    }
}

extension MainPresenter: MainInteractorOutputDelegate {

}