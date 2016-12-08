//
//  landScapePage.swift
//  LandScapeDemo
//
//  Created by Clement_Gu on 2016/12/7.
//  Copyright © 2016年 clement. All rights reserved.
//

import UIKit

class landScapePage: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //控制 横屏为true 使当前页面 横屏
//        GlobalConstant.isLandScape = true
        GlobalConstant.isLandScape = false
        view.backgroundColor =  UIColor.whiteColor()
        if navigationController == nil
        {
        let btn = getBtn("click", title: "模态返回按钮", frame: CGRect.init(x: 50, y: 100, width: 200, height: 40))
        let preBtn = getBtn("preClick", title: "二层模态窗口弹出", frame: CGRect.init(x: 50, y: 200, width: 200, height: 40))
        }
        
        
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        //不希望其他页面也横屏 那么在页面显示后要设置 横屏为false
        GlobalConstant.isLandScape = false
    }

    func click()
    {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    func preClick()
    {
        presentViewController(SecPreViewController(), animated: true, completion: nil)
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
