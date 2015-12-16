//
//  API.swift
//  coffeemachine
//
//  Created by Matt Book Pro on 2015-02-17.
//  Copyright (c) 2015 smoothsolutions. All rights reserved.
//

import Foundation

class API{
    
    var WaterStatus = false
  //  var MachineStatus = false
    
    func getWaterStatus(address:String ){
        
        let url = NSURL(string: address)
        
        let task = NSURLSession.sharedSession().dataTaskWithURL(url!) {(data, response, error) in
            println(NSString(data: data, encoding: NSUTF8StringEncoding))
            
           // dispatch_async(dispatch_get_main_queue(), {
                // perform on main
                let k = NSString(data: data, encoding: NSUTF8StringEncoding)
                
                
                if k?.rangeOfString("Water Full") != nil
                {
                    self.didReceiveWaterToken("true")
                 
                    //self.LblReady.text = "Making Coffee"
                }
                else
                {
                    
                    self.didReceiveWaterToken("false")                    //self.LblReady.text = "no"
                    
                }
                
         //   });
        }
            
        task.resume()
        
        
        
    }
    
    func didReceiveWaterToken(token : String)
    {
        if token == "true"
        {
             WaterStatus = true
            
        }else
        {
              WaterStatus = false
            
        }
        
       
        
    }
    
    
        
    
    
    
    
    
}