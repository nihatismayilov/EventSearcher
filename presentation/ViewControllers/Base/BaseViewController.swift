//
//  BaseViewController.swift
//  presentation
//
//  Created by Nazim Asadov on 29.08.22.
//

import UIKit

public class BaseViewController<VM>: UIViewController {

    var vm: VM? = nil
    var router: RouterProtocol? = nil
}
