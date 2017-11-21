//
//  ViewController.swift
//  scroll view demo
//
//  Created by 李懿哲 on 21/11/2017.
//  Copyright © 2017 嘉肯网络科技. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func viewDidLayoutSubviews() {
        initViews()
    }

    
    func initViews() {
        
        let scrollView = UIScrollView.init(frame: CGRect.init(x: -20, y: 0, width: view.bounds.width + 40, height: view.bounds.height))
        scrollView.backgroundColor = randomColor()
        view.addSubview(scrollView)
        scrollView.isPagingEnabled = true
        
        /**
         增加内容
            */
        for i in 0 ..< 4 {
            let view = UIView.init(frame: CGRect.init(x: 20 + (self.view.bounds.width + 40) * CGFloat(i), y: 0, width: self.view.bounds.width, height: self.view.bounds.height))
            view.backgroundColor = randomColor()
            scrollView.addSubview(view)
        }
        
        scrollView.contentSize = CGSize.init(width: (self.view.bounds.width + 40) * 4, height: self.view.bounds.height)
    }
    
    func randomColor() -> UIColor {
        return UIColor.init(red: CGFloat(arc4random_uniform(UInt32(255.0))) / CGFloat(255), green: CGFloat(arc4random_uniform(UInt32(255.0))) / CGFloat(255), blue: CGFloat(arc4random_uniform(UInt32(255.0))) / CGFloat(255), alpha: 1)
    }

}

