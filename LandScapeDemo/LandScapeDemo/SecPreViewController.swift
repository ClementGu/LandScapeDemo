//
//  SecPreViewController.swift
//  LandScapeDemo
//
//  Created by Clement_Gu on 2016/12/8.
//  Copyright © 2016年 clement. All rights reserved.
//

import UIKit

class SecPreViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        GlobalConstant.isLandScape = true
        
        let btn = UIButton.init(frame: CGRect.init(x: 50, y: 100, width: 200, height: 40))
        btn.setTitle("返回", forState: .Normal)
        btn.backgroundColor = UIColor.grayColor()
        btn.addTarget(self, action: "btnClick", forControlEvents: .TouchUpInside)
        view.addSubview(btn)
        
    }

    func btnClick()
    {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
