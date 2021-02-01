//
//  MainProtocols.swift
//  WeatherApp
//
//  Created by unitlabs on 1/26/21.
//  Copyright © 2021 saraKhater. All rights reserved.
//

import UIKit

// MARK: - View

protocol MainDelegate: class {
    func error(notification: Notification)
}

// MARK: - Interactor

protocol MainInteractorInputDelegate: class {
    var presenter: MainInteractorOutputDelegate? { get set }
}

protocol MainInteractorOutputDelegate: class {
}

// MARK: - Presenter

protocol MainPresenterDelegate: class {
    var view: MainDelegate? { get set }
    var interactor: MainInteractorInputDelegate? { get set }
    var router: MainRouterDelegate? { get set }

    func viewDidLoad()
    func dismiss()
}

// MARK: - Router

protocol MainRouterDelegate: class {
    static func createMainViewController(_ view: MainView?) -> UIViewController
    func dismiss(view: UIViewController)
}
