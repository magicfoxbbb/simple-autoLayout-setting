//
//  ViewController.swift
//  自动布局代码
//
//  Created by LiuYun on 16/2/14.
//  Copyright © 2016年 LiuYun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

//    init(){
//    super.init(nibName: nil, bundle: nil)
//    }
//    required init?(coder aDecoder: NSCoder) {
//        print("111")
//
//        super.init(coder: aDecoder)
//
//    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //约束要在添加之后才能设置
        /**
        
         item的宽度 等于 另外控件的宽度的1倍 ＋ 常量
        
        - parameter item:       要约束的控件
        - parameter attribute:  约束的类型
        - parameter relatedBy:  与参照控件之间的关系  大于 等于 小于
        - parameter toItem:     参照的控件
        - parameter attribute:  参照控件的类型
        - parameter multiplier: 乘数
        - parameter constant:   常量
        */
        //宽度等于300
        let blueView = UIView()
        blueView.translatesAutoresizingMaskIntoConstraints = false
        blueView.backgroundColor = UIColor.blueColor()
        view.addSubview(blueView)
        let redView = UIView()
        redView.translatesAutoresizingMaskIntoConstraints = false
        redView.backgroundColor = UIColor.redColor()
        view.addSubview(redView)
        
        
        //宽度等于100
//        let widthConstraint = NSLayoutConstraint(item:blueView , attribute: .Width, relatedBy: .Equal, toItem: view, attribute: .Width, multiplier: 0.5, constant: 0)
//        view.addConstraint(widthConstraint)
//        //高度等于100
//        let heightConstraint = NSLayoutConstraint(item:blueView , attribute: .Height, relatedBy: .Equal, toItem: view, attribute: .Height, multiplier: 0.5, constant: 0)
//        view.addConstraint(heightConstraint)
//        //水平居中
//        let centerXConstraint = NSLayoutConstraint(item: blueView, attribute: .CenterX, relatedBy: .Equal, toItem: view, attribute: .CenterX, multiplier: 1, constant: 0)
//        view.addConstraint(centerXConstraint)
//        let centerYConstraint = NSLayoutConstraint(item: blueView, attribute: .CenterY, relatedBy: .Equal, toItem: view, attribute: .CenterY, multiplier: 1, constant: 0)
//        view.addConstraint(centerYConstraint)
    
        
//        blueView.selfWidth(100)
//        blueView.selfHeight(100)
//        blueView.left_Parent(20)
//        blueView.bottom_Parent(20)
        redView.ly_makeConsfromSuperView(10, bottom: nil, left: 10, right: nil, size: CGSizeMake(100, 50))
//        blueView.ly_topAliment(redView)
//        blueView.ly_left_fromView(10, relationView: redView)
        blueView.ly_makeAliment(.centerY, top: nil, left: 10, bottom: nil, right: nil, relationView: redView, size: CGSize(width: 100, height: 30))
        
//        blueView.ly_makeAliment(lyalimentType.top, relationView: redView,size: CGSize(width: 30, height: 100))
        
        
//        redView.ly_makeConsFromRelationView(nil, left: 10, bottom: nil, right: nil, view: blueView)
//        redView.ly_bottomAliment(blueView)
        
//        redView.ly
//        redView.widthEqualTo(view, factor: 0.5, constant:0)
//        redView.bottom_Parent(10)
//        redView.left_Parent(50)
////
////        blueView.makeConsfromSuperView(10, bottom: 10, left: 10, right: 10)
//          blueView.selfWidth(100)
//          blueView.selfHeight(100)
//          blueView.centerXEqualto(redView)
        }

    func layout1(){
        let blueView = UIView()
        blueView.translatesAutoresizingMaskIntoConstraints = false
        blueView.backgroundColor = UIColor.redColor()
        view.addSubview(blueView)
        //宽度等于100
        let widthConstraint = NSLayoutConstraint(item:blueView , attribute: .Width, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 0.0, constant: 100)
        blueView.addConstraint(widthConstraint)
        //高度等于100
        let heightConstraint = NSLayoutConstraint(item:blueView , attribute: .Height, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 0.0, constant: 100)
        blueView.addConstraint(heightConstraint)
        //离父控件的右边有10
        let rightConstraint = NSLayoutConstraint(item: blueView, attribute: .Right, relatedBy: .Equal, toItem: view, attribute: .Right, multiplier: 1.0, constant: -10)
        view.addConstraint(rightConstraint)
        //离父控件的底部有10
        let bottomConstraint = NSLayoutConstraint(item: blueView, attribute: .Bottom, relatedBy: .Equal, toItem: view, attribute: .Bottom, multiplier: 1.0, constant: -10)
        view.addConstraint(bottomConstraint)

    }

}

