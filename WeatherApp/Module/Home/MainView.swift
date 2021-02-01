//
//  MainView.swift
//  WeatherApp
//
//  Created by unitlabs on 1/26/21.
//  Copyright © 2021 saraKhater. All rights reserved.
//

import UIKit

class MainView: ViewController {
    var presenter: MainPresenterDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Main"
    }

}

extension MainView: MainDelegate {
    func error(notification: Notification) {

    }
}