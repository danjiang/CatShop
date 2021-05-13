//
//  CatsViewController.swift
//  CatShop
//
//  Created by Dan Jiang on 2021/5/13.
//

import UIKit

class CatsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .green
        
        if let image = imageWithName("cat.jpeg") {
            let imageView = UIImageView(image: image)
            imageView.frame.origin.x = (view.frame.size.width - image.size.width) / 2.0
            imageView.frame.origin.y = (view.frame.size.height - image.size.height) / 2.0
            view.addSubview(imageView)
        }
    }
    
    func imageWithName(_ name: String) -> UIImage? {
        let bundle = Bundle(for: CatsViewController.self)
        let url = bundle.url(forResource: "CatShop", withExtension: "bundle")!
        let imageBundle = Bundle(url: url)
        return UIImage(named: name, in: imageBundle, compatibleWith: nil)
        
    }

}
