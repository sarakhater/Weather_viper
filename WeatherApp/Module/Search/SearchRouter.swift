//
//  SearchRouter.swift
//  WeatherApp
//
//  Created by unitlabs on 1/25/21.
//  Copyright © 2021 saraKhater. All rights reserved.
//

import UIKit

class SearchRouter: SearchRouterDelegate {

    static let storyboard = UIStoryboard(name: "Search", bundle: Bundle.main)

    static func createSearchViewController(_ view: SearchView?) -> UIViewController {
        guard let vc = view ?? storyboard.instantiateViewController(withIdentifier: "SearchController") as? SearchView else {
            return UIViewController()
        }

        let presenter: SearchPresenterDelegate & SearchInteractorOutputDelegate = SearchPresenter()
        let interactor: SearchInteractorInputDelegate  = SearchInteractor()
        let router: SearchRouterDelegate = SearchRouter()

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
