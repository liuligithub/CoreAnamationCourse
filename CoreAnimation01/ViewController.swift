//
//  ViewController.swift
//  CoreAnimation01
//
//  Created by 刘莉 on 15/11/6.
//  Copyright © 2015年 刘莉. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let redBall = UIView(frame: CGRectMake(50, 50, 100, 100))
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        redBall.backgroundColor = UIColor.redColor()
        //        redBall.layer.cornerRadius = 50;
        self.view.addSubview(redBall);
        
        //        UIView.animateWithDuration(2, delay: 0,usingSpringWithDamping: 0.3,initialSpringVelocity: 0, options: UIViewAnimationOptions.CurveEaseInOut, animations: { () -> Void in
        //
        //            redBall.transform = CGAffineTransformConcat(CGAffineTransformMakeScale(2, 2), CGAffineTransformMakeTranslation(100, 50))
        //
        //            redBall.backgroundColor = UIColor.greenColor()
        //
        //            }, completion: nil)
        
        // 创建JNW实例
        // 阻尼  damping
        // 伸展系数，弹簧伸缩的难度
        //
        //        let scale =  JNWSpringAnimation(keyPath: "transform.scale")
        //        // 设置阻尼值
        //        scale.damping = 6
        //        // 弹性系数
        //        scale.stiffness = 100
        //        //设置质量
        //        scale.mass = 2;
        //        // 设置初始量与结束值
        //        scale.fromValue  = 1;
        //        scale.toValue = 2;
        //        redBall.layer.addAnimation(scale, forKey: scale.keyPath)
        //        redBall.transform = CGAffineTransformMakeScale(2, 2)
        
        
        
        
        //
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        //  
        
//        旋转动画
        
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
        redBall.layer.addAnimation(scale, forKey: scale.keyPath)
        redBall.transform = CGAffineTransformMakeScale(2, 2)
        
        let rotation = JNWSpringAnimation(keyPath: "transform.rotation")
        rotation.damping = 6
        rotation.stiffness = 100
        rotation.mass = 2
        rotation.fromValue = 0
        rotation.toValue = M_PI_2
        redBall.layer.addAnimation(rotation, forKey:rotation.keyPath)
        redBall.transform  = CGAffineTransformMakeRotation(CGFloat(M_PI_2))
        
        
        // 位移动画
        let move = JNWSpringAnimation(keyPath: "transform.translation.x")
        move.damping = 10
        move.stiffness = 100
        move.mass = 2
        move.fromValue = 0
        move.toValue = 400
        redBall.layer.addAnimation(move, forKey: move.keyPath)
        redBall.transform = CGAffineTransformMakeTranslation(400, 0)
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

