//
//  ASResponseModal.swift
//  FearFighter
//
//  Created by Praveen kumar & Zaman Meraj on 2/24/16.
//  Copyright © 2016 Praveen kumar & Zaman Meraj. All rights reserved.
//

import Foundation

struct ASNetObject {
    
    let responseDict:AnyObject?
    let error:NSError?
    let statusCode:Int?
    let isSuccess:Bool?
    let operationSuccessful:Bool?
    let serverMessage : String?
    
    
    init(response:AnyObject?, err:NSError? , status:Int?, success:Bool, opSuccess:Bool?, message:String?){
        
        self.statusCode = status;
        self.isSuccess  = success;
        self.error = err;
        self.responseDict = response;
        self.operationSuccessful = opSuccess;
        self.serverMessage = message;
    }
}
