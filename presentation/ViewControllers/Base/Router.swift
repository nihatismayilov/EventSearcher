//
//  Router.swift
//  presentation
//
//  Created by Nazim Asadov on 29.08.22.
//

import Foundation
import Swinject

protocol RouterProtocol {
    func firstViewController() -> FirstViewController
}

public class Router: RouterProtocol {
    
    private let resolver: Resolver
    init(resolver: Resolver) {
        self.resolver = resolver
    }
    
    func firstViewController() -> FirstViewController{
        let vc = FirstViewController()
        vc.vm = resolver.resolve(FirstViewModel.self)
        vc.router = self
        
        return vc
    }    
}
