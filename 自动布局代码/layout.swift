//
//  layout.swift
//  自动布局代码
//
//  Created by LiuYun on 16/3/12.
//  Copyright © 2016年 LiuYun. All rights reserved.
//

import UIKit

enum lyalimentType{
    case top
    case left
    case bottom
    case right
    case centerX
    case centerY
}

extension UIView{

    private func ly_top_Parent(var top:CGFloat?){
        if top == nil {
            return
        }
        if top < 0 {
            top = top! * -1.0
        }
    let constraint = NSLayoutConstraint(item: self, attribute: .Top, relatedBy: .Equal, toItem: self.superview, attribute: .Top, multiplier: 1, constant: top!)
        self.superview!.addConstraint(constraint)
    }
    private func ly_right_Parent(var right:CGFloat?){
        if right == nil {
        return
        }
        if right > 0 {
            right = right! * -1.0
        }
        let constraint = NSLayoutConstraint(item: self, attribute: .Right, relatedBy: .Equal, toItem: self.superview, attribute: .Right, multiplier: 1, constant: right!)
        self.superview!.addConstraint(constraint)
    }
    
    private func ly_left_Parent(var left:CGFloat?){
        if left == nil {
            return
        }
        if left < 0 {
            left = left! * -1.0
        }
        let constraint = NSLayoutConstraint(item: self, attribute: .Left, relatedBy: .Equal, toItem: self.superview, attribute: .Left, multiplier: 1, constant: left!)
        self.superview!.addConstraint(constraint)
    }
   private func ly_bottom_Parent(var bottom:CGFloat?){
        if bottom == nil {
        return
        }
        if bottom > 0 {
            bottom = bottom! * -1.0
        }
        let constraint = NSLayoutConstraint(item: self, attribute: .Bottom, relatedBy: .Equal, toItem: self.superview, attribute: .Bottom, multiplier: 1, constant: bottom!)
        self.superview!.addConstraint(constraint)
    }
    private func ly_centerXEqualto(view:UIView){
        let constraint = NSLayoutConstraint(item: self, attribute: .CenterX, relatedBy: .Equal, toItem: view, attribute: .CenterX, multiplier: 1, constant: 0)
        self.superview!.addConstraint(constraint)

    }
    private func ly_centerYEqualto(view:UIView){
        let constraint = NSLayoutConstraint(item: self, attribute: .CenterY, relatedBy: .Equal, toItem: view, attribute: .CenterY, multiplier: 1, constant: 0)
        self.superview!.addConstraint(constraint)
        
    }

    func ly_makeConsfromSuperView(top:CGFloat?,bottom:CGFloat?,left:CGFloat?,right:CGFloat?,size:CGSize?){
        
        ly_top_Parent(top)
        ly_bottom_Parent(bottom)
        ly_left_Parent(left)
        ly_right_Parent(right)
        ly_selfWidth(size?.width)
        ly_selfHeight(size?.height)
    }
    
    func ly_selfWidth(var width:CGFloat?){
        if width == nil{
        return
        }
        if width < 0{
            width = width! * -1
        }
        let constraint = NSLayoutConstraint(item:self , attribute: .Width, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 0.0, constant: width!)
        self.addConstraint(constraint)
    }
    func ly_selfHeight(var height:CGFloat?){
        if height == nil{
        return
        }
        if height < 0{
            height = height! * -1
        }
        let constraint = NSLayoutConstraint(item:self , attribute: .Height, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 0.0, constant: height!)
        self.addConstraint(constraint)
        
    }
    func ly_widthEqualTo(relationView:UIView,var factor:CGFloat,var constant:CGFloat){
        if factor < 0  {
            factor = factor * -1.0
        }
        if constant < 0  {
            constant = constant * -1.0
        }
        let constraint = NSLayoutConstraint(item: self, attribute: NSLayoutAttribute.Width, relatedBy: .Equal, toItem:relationView, attribute: .Width, multiplier: factor, constant: constant)
        self.superview?.addConstraint(constraint)
    }
    func ly_heightEqualTo(relationView:UIView,var factor:CGFloat,var constant:CGFloat){
        if factor < 0  {
            factor = factor * -1.0
        }
        if constant < 0  {
            constant = constant * -1.0
        }
        let constraint = NSLayoutConstraint(item: self, attribute: NSLayoutAttribute.Height, relatedBy: .Equal, toItem:relationView, attribute: .Height, multiplier: factor, constant: constant)
        self.superview?.addConstraint(constraint)
    }
    private func ly_top_fromView(var top:CGFloat?,relationView:UIView){
        if top == nil {
            return
        }
        if top < 0 {
            top = top! * -1.0
        }
        let constraint = NSLayoutConstraint(item: self, attribute:.Top, relatedBy: .Equal, toItem:relationView, attribute: .Bottom, multiplier: 1, constant: top!)
        self.superview!.addConstraint(constraint)
    }
    private func ly_bottom_fromView(var bottom:CGFloat?,relationView:UIView){
        if bottom == nil {
        return
        }
        if bottom > 0 {
            bottom = bottom! * -1.0
        }
        let constraint = NSLayoutConstraint(item: self, attribute: .Bottom, relatedBy: .Equal, toItem:relationView, attribute: .Top, multiplier: 1, constant: bottom!)
        self.superview!.addConstraint(constraint)
    }
    private func ly_left_fromView(var left:CGFloat?,relationView:UIView){
        if left == nil {
        return
        }
        if left < 0 {
            left = left! * -1.0
        }
        let constraint = NSLayoutConstraint(item: self, attribute: .Left, relatedBy: .Equal, toItem:relationView, attribute: .Right, multiplier: 1, constant: left!)
        self.superview!.addConstraint(constraint)
    }
    private func ly_right_fromView(var right:CGFloat?,relationView:UIView){
        if right == nil {
            return
        }
        if right > 0 {
            right = right! * -1.0
        }
        let constraint = NSLayoutConstraint(item: self, attribute: .Right, relatedBy: .Equal, toItem:relationView, attribute: .Left, multiplier: 1, constant: right!)
        self.superview!.addConstraint(constraint)
    }
    
    private func ly_topAliment(relationView:UIView){
        let constraint = NSLayoutConstraint(item: self, attribute: .Top, relatedBy: .Equal, toItem:relationView, attribute: .Top, multiplier: 1, constant: 0)
        self.superview!.addConstraint(constraint)
    }
    private func ly_leftAliment(relationView:UIView){
        let constraint = NSLayoutConstraint(item: self, attribute: .Left, relatedBy: .Equal, toItem:relationView, attribute: .Left, multiplier: 1, constant: 0)
        self.superview!.addConstraint(constraint)
    }
    private func ly_bottomAliment(relationView:UIView){
        let constraint = NSLayoutConstraint(item: self, attribute: .Bottom, relatedBy: .Equal, toItem:relationView, attribute: .Bottom, multiplier: 1, constant: 0)
        self.superview!.addConstraint(constraint)
    }
    private func ly_rightAliment(relationView:UIView){
        let constraint = NSLayoutConstraint(item: self, attribute: .Right, relatedBy: .Equal, toItem:relationView, attribute: .Right, multiplier: 1, constant: 0)
        self.superview!.addConstraint(constraint)
    }
    func ly_makeAliment(type:lyalimentType,top:CGFloat?,left:CGFloat?, bottom:CGFloat?,right:CGFloat?,relationView:UIView,size:CGSize?){

        switch type{
            
        case .top:
          ly_topAliment(relationView)
          ly_left_fromView(left, relationView: relationView)
          ly_right_fromView(right, relationView: relationView)
        case .left:
            ly_leftAliment(relationView)
            ly_top_fromView(top, relationView: relationView)
            ly_bottom_fromView(bottom, relationView: relationView)
        case .bottom:
            ly_bottomAliment(relationView)
            ly_left_fromView(left, relationView: relationView)
            ly_right_fromView(right, relationView: relationView)
        case .right:
            ly_rightAliment(relationView)
            ly_top_fromView(top, relationView: relationView)
            ly_bottom_fromView(bottom, relationView: relationView)
        case .centerX:
            ly_centerXEqualto(relationView)
            ly_top_fromView(top, relationView: relationView)
            ly_bottom_fromView(bottom, relationView: relationView)
        case .centerY:
            ly_centerYEqualto(relationView)
            ly_left_fromView(left, relationView: relationView)
            ly_right_fromView(right, relationView: relationView)

        }
        ly_selfWidth(size?.width)
        ly_selfHeight(size?.height)


    }








    
    


 
}
