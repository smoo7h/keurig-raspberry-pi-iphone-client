//
//  FirstViewController.swift
//  coffeemachine
//
//  Created by Matt Book Pro on 2015-02-17.
//  Copyright (c) 2015 smoothsolutions. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet var LblReady: UILabel!
    @IBOutlet var WaterSwitch: UISwitch!
    @IBOutlet var StatusSwitch: UISwitch!

   //  let api = API()
    
    override func viewDidLoad() {
        super.viewDidLoad()
              // Do any additional setup after loading the view, typically from a nib.
    //     WaterSwitch.setOn(false, animated: true)
        
     //    StatusSwitch.setOn(false, animated: true)
       
        
        var timer = NSTimer.scheduledTimerWithTimeInterval(2, target: self, selector: Selector("update"), userInfo: nil, repeats: true)

        
        
    }

    func update() {
        
        
     //   api.getWaterStatus(NSString(string: "http://localhost:1988/waterstatus"))
        
        
       // api.getMachineStatus(NSString(string: "http://localhost:1988/machinestatus"))
        
   //     if api.WaterStatus == true
    //    {
     //       WaterSwitch.setOn(true, animated: true)
     //   }
     //   else
     //   {
      //       WaterSwitch.setOn(false, animated: true)
      //  }

              

    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func CmdBrew(sender: UIButton) {
        
        let k = ""
       
        let url = NSURL(string: "http://localhost:1988/makecoffee")
        
        let task = NSURLSession.sharedSession().dataTaskWithURL(url!) {(data, response, error) in
            println(NSString(data: data, encoding: NSUTF8StringEncoding))
            
            dispatch_async(dispatch_get_main_queue(), {
                // perform on main
                let k = NSString(data: data, encoding: NSUTF8StringEncoding)
                
           
                if k?.rangeOfString("Making Coffee") != nil
                {
                    
                 //   self.LblReady.text = "Making Coffee"
                }
                else
                {
                   // self.LblReady.text = "no"
                    
                }
                
            });
            
            
            
        }
        
        task.resume()
     
        
        
    //    if api.WaterStatus == true
     //   {
     //       LblReady.text = "Ready"
     //   }
     //   else
     //   {
     //
     //       LblReady.text = "NotReady"
     //
     //   }
        
        
        
    }

}

