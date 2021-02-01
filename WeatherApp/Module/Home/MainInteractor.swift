//
//  MainInteractor.swift
//  WeatherApp
//
//  Created by unitlabs on 1/26/21.
//  Copyright © 2021 saraKhater. All rights reserved.
//

import Foundation
import Networking
import Moya

class MainInteractor: MainInteractorInputDelegate {
    weak var presenter: MainInteractorOutputDelegate?

    let provider: MoyaProvider<Api>
    public init(_ provider: MoyaProvider<Api>?) {
        let authPlugin = AccessTokenPlugin(tokenClosure: UserDefaults.standard.string(forKey: "token") ?? "")
        self.provider = provider ?? MoyaProvider<Api>(plugins: [authPlugin, NetworkLoggerPlugin(verbose: true)])
    }
}
