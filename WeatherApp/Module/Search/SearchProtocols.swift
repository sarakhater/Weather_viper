//
//  SearchProtocols.swift
//  WeatherApp
//
//  Created by unitlabs on 1/25/21.
//  Copyright © 2021 saraKhater. All rights reserved.
//

import UIKit

// MARK: - View

protocol SearchDelegate: class {
    func error(notification: Notification)
}

// MARK: - Interactor

protocol SearchInteractorInputDelegate: class {
    var presenter: SearchInteractorOutputDelegate? { get set }
}

protocol SearchInteractorOutputDelegate: class {
}

// MARK: - Presenter

protocol SearchPresenterDelegate: class {
    var view: SearchDelegate? { get set }
    var interactor: SearchInteractorInputDelegate? { get set }
    var router: SearchRouterDelegate? { get set }

    func viewDidLoad()
    func dismiss()
}

// MARK: - Router

protocol SearchRouterDelegate: class {
    static func createSearchViewController(_ view: SearchView?) -> UIViewController
    func dismiss(view: UIViewController)
}
