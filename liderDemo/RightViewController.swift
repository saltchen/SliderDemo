//
//  RightViewController.swift
//  liderDemo
//
//  Created by admin on 16/6/2.
//  Copyright © 2016年 saltchen. All rights reserved.
//

import UIKit

class RightViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "关于作者"
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func githubClicked(sender: AnyObject) {
        UIApplication.sharedApplication().openURL(NSURL(string: "https://github.com/saltchen")!)
    }
    
    @IBAction func blogClicked(sender: AnyObject) {
        UIApplication.sharedApplication().openURL(NSURL(string: "http://www.jianshu.com/users/165063e8c432/top_articles")!)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
