//
//  SearchPresenter.swift
//  WeatherApp
//
//  Created by unitlabs on 1/25/21.
//  Copyright © 2021 saraKhater. All rights reserved.
//

import UIKit
class SearchPresenter: SearchPresenterDelegate {

    weak var view: SearchDelegate?
    var interactor: SearchInteractorInputDelegate?
    var router: SearchRouterDelegate?

    func viewDidLoad() {

    }

    func dismiss() {
    	if let viewController = self.view as? UIViewController {
            self.router?.dismiss(view: viewController)
        }
    }
}

extension SearchPresenter: SearchInteractorOutputDelegate {

}