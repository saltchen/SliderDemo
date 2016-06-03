# SliderDemo

/************
主要对于第三方框架SlideMenuControllerSwift的使用，实现两边侧滑一个效果，类似的应用如知乎日报
通过仔细拜读作者的所写的代码，发现SlideMenuControllerSwift框架写的极其简洁
*************/

利用cocoapod安装第三方框架
框架地址：https://github.com/dekatotoro/SlideMenuControllerSwift

由于此框架是利用swift语言所写，所以在头文件部分需要使用frameworks
use_frameworks!
pod 'SlideMenuControllerSwift'

1.主要在AppDelegate 中func application加入

func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {

    

    let slideMenuController = SlideMenuController(mainViewController: mainViewController, leftMenuViewController: leftViewController, rightMenuViewController: rightViewController)
    self.window?.rootViewController = slideMenuController
    self.window?.makeKeyAndVisible()    

    return true
}

******
需要注意
如果你使用sb来搭建视图，你需要定制控制的Identifier
如我项目中的代码

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let mainViewController = storyboard.instantiateViewControllerWithIdentifier("MainViewController") as! MainViewController
        let leftViewController = storyboard.instantiateViewControllerWithIdentifier("LeftViewController") as! LeftViewController
        let rightViewController = storyboard.instantiateViewControllerWithIdentifier("RightViewController") as! RightViewController
        
        let nvc: UINavigationController = UINavigationController(rootViewController: mainViewController)
        
                
        let slideMenuController = SlideMenuController(mainViewController:nvc, leftMenuViewController: leftViewController, rightMenuViewController: rightViewController)
        
        slideMenuController.automaticallyAdjustsScrollViewInsets = true
       
        self.window?.rootViewController = slideMenuController
        self.window?.makeKeyAndVisible()
        
        //设置启动页面停留的时间
        NSThread.sleepForTimeInterval(2.0)
        
     
        return true
    }
    
    然后在主控制器中添加一下代码
    
     override func viewDidLoad() {
        super.viewDidLoad()
        //设置导航条的标题
        self.navigationItem.title = "天天新闻"
        
        
        self.addLeftBarButtonWithImage(UIImage(named: "ic_menu_black_24dp")!)
        
        self.addRightBarButtonWithImage(UIImage(named:"ic_notifications_black_24dp")!)
        
        //定时器控制头条新闻进行跳转
        //NSTimer.scheduledTimerWithTimeInterval(3, target: self, selector: "AutoScroll", userInfo: nil, repeats: true)

            }

