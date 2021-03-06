//
//  Goonies.swift
//  GitHubGoonies
//
//  Created by Joe E. on 9/28/15.
//  Copyright © 2015 Joe E. All rights reserved.
//

import Foundation

let API_ROOT = "https://api.github.com"
let myProfileURL = API_ROOT + "users/Montchat"

var users:[[String:AnyObject?]] = [
    
    [
        
        "login": "Montchat",
        "id": 7514990,
        "avatar_url": "https://avatars.githubusercontent.com/u/7514990?v=3",
        "gravatar_id": "",
        "url": "https://api.github.com/users/Montchat",
        "html_url": "https://github.com/Montchat",
        "followers_url": "https://api.github.com/users/Montchat/followers",
        "following_url": "https://api.github.com/users/Montchat/following{/other_user}",
        "gists_url": "https://api.github.com/users/Montchat/gists{/gist_id}",
        "starred_url": "https://api.github.com/users/Montchat/starred{/owner}{/repo}",
        "subscriptions_url": "https://api.github.com/users/Montchat/subscriptions",
        "organizations_url": "https://api.github.com/users/Montchat/orgs",
        "repos_url": "https://api.github.com/users/Montchat/repos",
        "events_url": "https://api.github.com/users/Montchat/events{/privacy}",
        "received_events_url": "https://api.github.com/users/Montchat/received_events",
        "type": "User",
        "site_admin": false,
        "name": nil,
        "company": nil,
        "blog": nil,
        "location": nil,
        "email": nil,
        "hireable": nil,
        "bio": nil,
        "public_repos": 13,
        "public_gists": 0,
        "followers": 2,
        "following": 2,
        "created_at": "2014-05-07T17:14:11Z",
        "updated_at": "2015-08-23T13:59:32Z"
        
    ]
    
]

class GitHubRequest: NSObject {
    class func requestUserInfo(username:String, completion: (responseInfo: AnyObject?) -> ()) {
        /* completion block is completion: (responseInfo: AnyObject?) -> () */
        let userURL = API_ROOT + "/users/" + username
        print(userURL)
        
        if let url = NSURL(string: userURL) {
            let request = NSURLRequest(URL: url)
            let task = NSURLSession.sharedSession().dataTaskWithRequest(request, completionHandler: { (data, response, error) -> Void in
               
                /* the idea of a closure is that you can build data around the data that you get when the request is done
                we are going to get data about the user, put it in a dictionary, and then use that data to append it to our array
                
                with the data that comes back, we are going to have to get it to come into
                */
                
                if let data = data {
                    do {
                        let info = try? NSJSONSerialization.JSONObjectWithData(data, options:
                            NSJSONReadingOptions.MutableContainers)
                        print(info)
                        
                        completion(responseInfo: info)
                        
                    } catch {
                        print(error)
                    }
                    
                }
                
            })
            
            task.resume()
        }

    }
    
    class func request(info: [String: AnyObject], completion: (responseInfo: AnyObject?) -> ()) {
        
        
    }
    
}
