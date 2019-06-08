//
//  ViewController.swift
//  FyuseTest
//
//  Created by Wataru Fujiwara on 2017/06/20.
//  Copyright © 2017年 Wataru Fujiwara. All rights reserved.
//

import UIKit
import CoreMotion
import AVFoundation
import AssetsLibrary

class ViewController: UIViewController {
    
    var imageArray = [CGImage]()
    var imageLayer: CALayer! = nil
    
    var motionManager: CMMotionManager!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageLayer = CALayer()
        imageLayer.frame = self.view.frame
        self.view.layer.addSublayer(imageLayer)
        
        var i = 88
        while i < 159 {
            if(i < 100) {
                var image = UIImage(named: "IMG_80" + String(i))
                UIGraphicsBeginImageContext(self.view.frame.size)
                image?.draw(in: self.view.frame)
                image = UIGraphicsGetImageFromCurrentImageContext()
                UIGraphicsEndImageContext()
                self.imageArray.append((image?.cgImage!)!)
            } else {
                var image = UIImage(named: "IMG_8" + String(i))
                UIGraphicsBeginImageContext(self.view.frame.size)
                image?.draw(in: self.view.frame)
                image = UIGraphicsGetImageFromCurrentImageContext()
                UIGraphicsEndImageContext()
                self.imageArray.append((image?.cgImage!)!)
            }
            i += 1
        }
        
        print(self.imageArray.count)
        
        motionManager = CMMotionManager()
        motionManager.accelerometerUpdateInterval = 1.5

        motionManager?.startDeviceMotionUpdates(to: OperationQueue.current!, withHandler: { motion, _ in
            if let attitude = motion?.attitude {
                self.motionAnimation(attitude, nil)
            }
        })
    }
    
    func motionAnimation(_ attitude:CMAttitude,_ error:Error?) {
        
        let roll = Int(attitude.roll * 360 / Double.pi)
        
        print(roll)
        
        switch roll {
        case -58 ..< -56:
            imageLayer.contents = imageArray[0]
        case -56 ..< -54:
            imageLayer.contents = imageArray[1]
        case -54 ..< -52:
            imageLayer.contents = imageArray[2]
        case -52 ..< -50:
            imageLayer.contents = imageArray[3]
        case -50 ..< -48:
            imageLayer.contents = imageArray[4]
        case -48 ..< -46:
            imageLayer.contents = imageArray[5]
        case -46 ..< -44:
            imageLayer.contents = imageArray[6]
        case -44 ..< -42:
            imageLayer.contents = imageArray[7]
        case -42 ..< -40:
            imageLayer.contents = imageArray[8]
        case -40 ..< -38:
            imageLayer.contents = imageArray[9]
        case -38 ..< -36:
            imageLayer.contents = imageArray[10]
        case -36 ..< -34:
            imageLayer.contents = imageArray[11]
        case -34 ..< -32:
            imageLayer.contents = imageArray[12]
        case -32 ..< -30:
            imageLayer.contents = imageArray[13]
        case -30 ..< -28:
            imageLayer.contents = imageArray[14]
        case -28 ..< -26:
            imageLayer.contents = imageArray[15]
        case -26 ..< -24:
            imageLayer.contents = imageArray[16]
        case -24 ..< -22:
            imageLayer.contents = imageArray[17]
        case -22 ..< -20:
            imageLayer.contents = imageArray[18]
        case -20 ..< -18:
            imageLayer.contents = imageArray[19]
        case -18 ..< -16:
            imageLayer.contents = imageArray[20]
        case -16 ..< -14:
            imageLayer.contents = imageArray[21]
        case -14 ..< -12:
            imageLayer.contents = imageArray[22]
        case -12 ..< -10:
            imageLayer.contents = imageArray[23]
        case -10 ..< -8:
            imageLayer.contents = imageArray[24]
        case -8 ..< -6:
            imageLayer.contents = imageArray[25]
        case -6 ..< -4:
            imageLayer.contents = imageArray[26]
        case -4 ..< -2:
            imageLayer.contents = imageArray[27]
        case -2..<0:
            imageLayer.contents = imageArray[28]
        case 0 ..< 2:
            imageLayer.contents = imageArray[29]
        case 2 ..< 4:
            imageLayer.contents = imageArray[30]
        case 4 ..< 6:
            imageLayer.contents = imageArray[31]
        case 6 ..< 8:
            imageLayer.contents = imageArray[32]
        case 8 ..< 10:
            imageLayer.contents = imageArray[33]
        case 10 ..< 12:
            imageLayer.contents = imageArray[34]
        case 12 ..< 14:
            imageLayer.contents = imageArray[35]
        case 14 ..< 16:
            imageLayer.contents = imageArray[36]
        case 16 ..< 18:
            imageLayer.contents = imageArray[37]
        case 18 ..< 20:
            imageLayer.contents = imageArray[38]
        case 20 ..< 22:
            imageLayer.contents = imageArray[39]
        case 22 ..< 24:
            imageLayer.contents = imageArray[40]
        case 24 ..< 26:
            imageLayer.contents = imageArray[41]
        case 26 ..< 28:
            imageLayer.contents = imageArray[42]
        case 28 ..< 30:
            imageLayer.contents = imageArray[43]
        case 30 ..< 32:
            imageLayer.contents = imageArray[44]
        case 32 ..< 34:
            imageLayer.contents = imageArray[45]
        case 34 ..< 36:
            imageLayer.contents = imageArray[46]
        case 36 ..< 38:
            imageLayer.contents = imageArray[47]
        case 38 ..< 40:
            imageLayer.contents = imageArray[48]
        case 40 ..< 42:
            imageLayer.contents = imageArray[49]
        case 42 ..< 44:
            imageLayer.contents = imageArray[50]
        case 44 ..< 46:
            imageLayer.contents = imageArray[51]
        case 46 ..< 48:
            imageLayer.contents = imageArray[52]
        case 48 ..< 50:
            imageLayer.contents = imageArray[53]
        case 50 ..< 52:
            imageLayer.contents = imageArray[54]
        case 52 ..< 180:
            imageLayer.contents = imageArray[55]
        case 180 ..< 360:
            imageLayer.contents = imageArray[56]
        default:
            imageLayer.contents = imageArray[0]
        }
    }
        
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

