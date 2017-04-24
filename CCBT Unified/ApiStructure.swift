//
//  ApiStructure.swift
//  CCBT Unified
//
//  Created by Zaman on 4/12/17.
//  Copyright © 2017 Zaman Meraj. All rights reserved.
//

import Foundation
import Alamofire

typealias NetworkClosure = (_ netResponse:ASNetObject) -> (Void)

struct CallApi{
    
    static func getData( url:String ,parameter:Dictionary<String, Any>? , type:HTTPMethod , callback:@escaping NetworkClosure)  {
        let headers: HTTPHeaders = ["Content-Type": "Application/json", "Authorization": ""]
        Alamofire.request(url, method: type, parameters: parameter, encoding: JSONEncoding.default, headers: headers).responseJSON { (response) in
            print(response.request as Any)  // original URL request
            print(response.response as Any) // URL response
            print(response.data as Any)     // server data
            print(response.result)   // result of response serialization
            print(response.description)
            var operationSuccessful: Bool?
            var message: String?
            switch(response.result) {
            case .success(_):
                if let data = response.result.value{
                    print(response.result.value as Any)
                    message =   data as? String
                    operationSuccessful =   true
                }
                break
                
            case .failure(_):
                print(response.result.error as Any)
                operationSuccessful =   false
                break
            }
            
            let responseObj = ASNetObject.init(response: response.result.value as AnyObject?, err: response.result.error as NSError?, status: response.response?.statusCode, success:response.result.isSuccess, opSuccess: operationSuccessful, message: message)
            callback(responseObj);
        }
    }
    
    static func uploadArrayList( url:String ,parameter:[Dictionary<String,Any>]? , type:HTTPMethod , callback:@escaping NetworkClosure)  {
        let headers: HTTPHeaders = ["Content-Type": "Application/json", "Authorization": ""]
        
        var request = URLRequest(url: NSURL(string:url)! as URL)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.allHTTPHeaderFields =   headers
        request.httpBody = try! JSONSerialization.data(withJSONObject: parameter!)
        
        Alamofire.request(request).responseJSON { (response) in
            
            print(response.request as Any)  // original URL request
            print(response.response as Any) // URL response
            print(response.data as Any)     // server data
            print(response.result)   // result of response serialization
            print(response.description)
            var operationSuccessful: Bool?
            var message: String?
            
            switch(response.result) {
            case .success(_):
                if let data = response.result.value{
                    print(response.result.value as Any)
                    message =   data as? String
                    operationSuccessful =   true
                }
                break
            case .failure(_):
                print(response.result.error as Any)
                operationSuccessful =   false
                break
                
            }
            let responseObj = ASNetObject.init(response: response.result.value as AnyObject?, err: response.result.error as NSError?, status: response.response?.statusCode, success:response.result.isSuccess, opSuccess: operationSuccessful, message: message)
            callback(responseObj);
        }
        
    }

    
}
