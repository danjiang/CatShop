//
//  Target_PetsViewController.swift
//  CatShop
//
//  Created by Dan Jiang on 2021/5/13.
//

import UIKit

@objc class Target_PetsViewController: NSObject {

    @objc func Action_Create(_ params: NSDictionary) -> UIViewController {
        let viewController = CatsViewController()
        return viewController;
    }
    
}
