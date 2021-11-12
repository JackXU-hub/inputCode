//
//  InputCodeView.swift
//  输入框
//
//  Created by quandemacbook on 2016/12/27.
//  Copyright © 2016年 daquan xu. All rights reserved.
//

import UIKit
var  tf   =  UITextField()
var screenWidth:CGFloat = UIScreen.main.bounds.width
var screenHeight:CGFloat = UIScreen.main.bounds.height

class InputCodeView: UIView,UITextFieldDelegate {
   
    var buttonCallBack:((String)->())?
    
    override init(frame:CGRect){
        super.init(frame: frame)
        let bgview = UIView()
        bgview.frame = CGRect(x:0, y:0, width:280, height:frame.size.height)
        bgview.backgroundColor = UIColor.black;
        self.addSubview(bgview)
        tf.frame = CGRect(x:10, y:(bgview.frame.size.height - 40)/2.0, width:100, height:40)
        tf.keyboardType = UIKeyboardType.numberPad
        tf.backgroundColor = UIColor.clear
        tf.textColor = UIColor.black
        tf.becomeFirstResponder()
        tf.delegate = self
        bgview.addSubview(tf)
        let coverView = UIView()
        coverView.frame = CGRect(x:10, y:(bgview.frame.size.height - 40)/2.0, width:screenWidth-150, height:40)
        coverView.backgroundColor = UIColor.black
        bgview.addSubview(coverView)
        
        
        for i in 0..<4{
            let  textLabel = UILabel()
            textLabel.frame = CGRect(x:i*40+i*20+10, y:5, width:50, height:30)
            textLabel.tag = i+200;
            textLabel.textColor = UIColor.white
            textLabel.backgroundColor = UIColor.black
            textLabel.textAlignment = NSTextAlignment.center
            coverView.addSubview(textLabel)
            
        }
        
        for i in 0..<4{
            let  label = UILabel()
            label.frame = CGRect(x:i*40+i*20+10, y:35, width:50, height:2)
            label.tag = i+100;
            label.backgroundColor = UIColor.white
            coverView.addSubview(label)
            
        }
        
        
        let notificationCenter = NotificationCenter.default
        
        let operationQueue = OperationQueue.main
        notificationCenter.addObserver(forName: UITextField.textDidChangeNotification, object: nil, queue: operationQueue) {_ in
            
            if self.buttonCallBack != nil {
                self.buttonCallBack!(tf.text ?? "")
            }
            if ((tf.text!.count) > 4){
                let finalIndex = tf.text?.index((tf.text?.startIndex)!, offsetBy: 0)
                let finalSuffix = tf.text?.substring(from: finalIndex!)
                tf.text = finalSuffix;
                return
            }
            var label1 = UILabel()
            //label1.text?.characters.count
            label1 = self.viewWithTag(100) as! UILabel
            var label2 = UILabel()
            label2 = self.viewWithTag(101) as! UILabel
            var label3 = UILabel()
            label3 = self.viewWithTag(102) as! UILabel
            var label4 = UILabel()
            label4 = self.viewWithTag(103) as! UILabel
            
            var label5 = UILabel()
            //label1.text?.characters.count
            label5 = self.viewWithTag(200) as! UILabel
            var label6 = UILabel()
            label6 = self.viewWithTag(201) as! UILabel
            var label7 = UILabel()
            label7 = self.viewWithTag(202) as! UILabel
            var label8 = UILabel()
            label8 = self.viewWithTag(203) as! UILabel
            
            //let text : NSString = tf.text
            if (tf.text!.count == 0) {
                label1.backgroundColor = UIColor.white;
                label2.backgroundColor = UIColor.white
                label3.backgroundColor = UIColor.white
                label4.backgroundColor = UIColor.white
                label5.text = ""
                label6.text = ""
                label7.text = ""
                label8.text = ""
                
            }
            if (tf.text!.count == 1) {
                label1.backgroundColor = UIColor.orange;
                label2.backgroundColor = UIColor.white
                label3.backgroundColor = UIColor.white
                label4.backgroundColor = UIColor.white
                
                let index = tf.text?.index((tf.text?.startIndex)!, offsetBy: 0)
                let suffix = tf.text?.substring(from: index!)
                label5.text = suffix
                label6.text = ""
                label7.text = ""
                label8.text = ""
                
                
            }
            if (tf.text!.count == 2) {
                label1.backgroundColor = UIColor.orange;
                label2.backgroundColor = UIColor.orange
                label3.backgroundColor = UIColor.white
                label4.backgroundColor = UIColor.white
                //            let index = tf.text?.index((tf.text?.startIndex)!, offsetBy: 0)
                //            let suffix = tf.text?.substring(from: index!)
                
                let index1 = tf.text?.index((tf.text?.startIndex)!, offsetBy: 1)
                let suffix1 = tf.text?.substring(from: index1!)
                //label5.text = suffix
                label6.text = suffix1
                label7.text = ""
                label8.text = ""
                
                
            }
            if (tf.text!.count == 3) {
                label1.backgroundColor = UIColor.orange;
                label2.backgroundColor = UIColor.orange
                label3.backgroundColor = UIColor.orange
                label4.backgroundColor = UIColor.white
                
                //            let index = tf.text?.index((tf.text?.startIndex)!, offsetBy: 0)
                //            let suffix = tf.text?.substring(from: index!)
                //
                //            let index1 = tf.text?.index((tf.text?.startIndex)!, offsetBy: 1)
                //            let suffix1 = tf.text?.substring(from: index1!)
                
                let index2 = tf.text?.index((tf.text?.startIndex)!, offsetBy: 2)
                let suffix2 = tf.text?.substring(from: index2!)
                
                //            label5.text = suffix
                //            label6.text = suffix1
                label7.text = suffix2
                label8.text = ""
                
                
            }
            
            if (tf.text!.count == 4) {
                label1.backgroundColor = UIColor.orange;
                label2.backgroundColor = UIColor.orange
                label3.backgroundColor = UIColor.orange
                label4.backgroundColor = UIColor.orange
                //            let index = tf.text?.index((tf.text?.endIndex)!, offsetBy: 0)
                //            let suffix = tf.text?.substring(from: index!)
                //
                //            let index1 = tf.text?.index((tf.text?.startIndex)!, offsetBy: 1)
                //            let suffix1 = tf.text?.substring(from: index1!)
                //
                //            let index2 = tf.text?.index((tf.text?.startIndex)!, offsetBy: 2)
                //            let suffix2 = tf.text?.substring(from: index2!)
                
                let index3 = tf.text?.index((tf.text?.startIndex)!, offsetBy: 3)
                let suffix3 = tf.text?.substring(from: index3!)
                
                //            label5.text = suffix
                //            label6.text = suffix1
                //            label7.text = suffix2
                label8.text = suffix3
                
            }
            print(tf.text)

            
        }

    }
    
    convenience init() {
        self.init(frame: CGRect.zero)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}


func CreatInputView(show: UIView) -> Void {
    
}

func showLine() {
    
    
    
}
