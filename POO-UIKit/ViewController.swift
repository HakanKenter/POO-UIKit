//
//  ViewController.swift
//  POO-UIKit
//
//  Created by kenter on 10/07/2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var topImages: [RoundedImage]!
    @IBOutlet weak var mainView: UserView!
    var users: [User] = Datas.shared.allUser()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setBackgroundColor(.systemCyan)
        mainView.user = users.first
//        topImages.forEach { img in
//            img.image = users[img.tag].image
//        }
        for index in 0..<topImages.count {
            let image = users[index]
            let btn = topImages[index]
            btn.image = image.image
            btn.isUserInteractionEnabled = true
            btn.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(btnPressed(_:) )))
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print(mainView.imageV.frame)
        mainView.imageV.setupCorner()
    }

    @objc func btnPressed(_ gesture: UITapGestureRecognizer) {
        guard let tag = gesture.view?.tag else { return }
        let user = users[tag]
        mainView.user = user
    }
    
}

extension ViewController {
    
    func setBackgroundColor(_ color: UIColor) {
        self.view.backgroundColor = color
    }
    
}

