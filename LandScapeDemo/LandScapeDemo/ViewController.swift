//
//  ViewController.swift
//  LandScapeDemo
//
//  Created by Clement_Gu on 2016/12/7.
//  Copyright © 2016年 clement. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let btnPre = getBtn("preClick", title: "模态窗口弹出", frame: CGRect.init(x: 50, y: 100, width: 200, height: 50))
        let btnNav = getBtn("navClick", title: "导航弹出", frame: CGRect.init(x: 50, y: 200, width: 200, height: 50))
        
//       GlobalConstant.isLandScape = true
        
    }
    //模态窗口点击事件
    func preClick()
    {
        presentViewController(landScapePage(), animated: true, completion: nil)
    }
    //导航窗口点击事件
    func navClick()
    {
//        let nav = UINavigationController.init(rootViewController: landScapePage())
//        GlobalConstant.isLandScape = true
        navigationController?.pushViewController(landScapePage(), animated: true)
//       presentViewController(nav, animated: true, completion: nil)
//        UIApplication.sharedApplication().keyWindow?.rootViewController = nav
    }
    
    
    
    /**
     创建通用btn
     
     - parameter action: 点击事件
     - parameter title:  标题
     - parameter frame:  范围
     
     - returns: 返回值
     */
    func getBtn(action:Selector,title:String,frame:CGRect) -> UIButton{
        let btn = UIButton.init(frame: frame)
        btn.setTitle(title, forState: .Normal)
        btn.backgroundColor = UIColor.grayColor()
        btn.addTarget(self, action: action, forControlEvents: .TouchUpInside)
        view.addSubview(btn)
        return btn
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

