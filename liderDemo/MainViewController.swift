//
//  MainViewController.swift
//  liderDemo
//
//  Created by admin on 16/6/2.
//  Copyright © 2016年 saltchen. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        //设置导航条的标题
        self.navigationItem.title = "天天新闻"
        
        
        self.addLeftBarButtonWithImage(UIImage(named: "ic_menu_black_24dp")!)
        
        self.addRightBarButtonWithImage(UIImage(named:"ic_notifications_black_24dp")!)
        
        //定时器控制头条新闻进行跳转
        //NSTimer.scheduledTimerWithTimeInterval(3, target: self, selector: "AutoScroll", userInfo: nil, repeats: true)

            }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
        // Dispose of any resources that can be recreated.
    }
    


}
