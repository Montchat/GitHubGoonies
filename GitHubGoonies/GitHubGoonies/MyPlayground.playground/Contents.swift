//: Playground - noun: a place where people can play

import UIKit

let API_ROOT = "https://api.github.com"

class GitHubRequest: NSObject {
    class func requestUserInfo(username:String, completion: (responseInfo: AnyObject?) -> ()) {
        let userURL = API_ROOT + "/users/" + username
        print(userURL)
        
        if let url = NSURL(string: userURL) {
            let request = NSURLRequest(URL: url)
            let task = NSURLSession.sharedSession().dataTaskWithRequest(request, completionHandler: { (data, response, error) -> Void in
                /* the idea of a closure is that you can build data around the data that you get when the request is done
                we are going to get data about the user, put it in a dictionary, and then use that data to append it to our array
                
                with the data that comes back, we are going to have to get it to come into
                */
                
                print(data)
                
            })
            
            task.resume()
        }
        
    }
    
    class func request(info: [String: AnyObject], completion: (responseInfo: AnyObject?) -> ()) {
        
        
    }
    
}

GitHubRequest.requestUserInfo("Montchat") { (responseInfo) -> () in
    
}