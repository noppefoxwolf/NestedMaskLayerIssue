//
//  ViewController.swift
//  Mask
//
//  Created by Tomoya Hirano on 2018/09/25.
//  Copyright © 2018年 Tomoya Hirano. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  override func viewDidLoad() {
    super.viewDidLoad()
    let imageView = UIImageView(image: UIImage(named: "image"))
    imageView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
    view.addSubview(imageView)
    
    let maskLayer1 = CALayer()
    maskLayer1.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
    maskLayer1.contents = UIImage(named: "left")!.cgImage!
    
    let maskLayer2 = CALayer()
    maskLayer2.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
    maskLayer2.contents = UIImage(named: "right")!.cgImage!
    
    maskLayer1.mask = maskLayer2
    imageView.layer.mask = maskLayer1
  }
}

