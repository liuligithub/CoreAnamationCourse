//
//  ViewController.swift
//  CoreAnimation01
//
//  Created by 刘莉 on 15/11/6.
//  Copyright © 2015年 刘莉. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let rebBall = UIView(frame: CGRectMake(50, 50, 100, 100))
        rebBall.backgroundColor = UIColor.redColor()
        rebBall.layer.cornerRadius = 50;
        self.view.addSubview(rebBall);
        
//        UIView.animateWithDuration(2, delay: 0,usingSpringWithDamping: 0.3,initialSpringVelocity: 0, options: UIViewAnimationOptions.CurveEaseInOut, animations: { () -> Void in
//            
//            rebBall.transform = CGAffineTransformConcat(CGAffineTransformMakeScale(2, 2), CGAffineTransformMakeTranslation(100, 50))
//            
//            rebBall.backgroundColor = UIColor.greenColor()
//           
//            }, completion: nil)
        
        // 创建JNW实例
          // 阻尼  damping  
        // 伸展系数，弹簧伸缩的难度
        
        let scale =  JNWSpringAnimation(keyPath: "transform.scale")
        // 设置阻尼值
        scale.damping = 6
        // 弹性系数
        scale.stiffness = 100
        //设置质量
        scale.mass = 2;
        // 设置初始量与结束值
        scale.fromValue  = 1;
        scale.toValue = 2;
        rebBall.layer.addAnimation(scale, forKey: scale.keyPath)
        rebBall.transform = CGAffineTransformMakeScale(2, 2)
        
        
//    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

