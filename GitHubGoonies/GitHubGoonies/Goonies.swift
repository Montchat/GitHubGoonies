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

let users:[[String:AnyObject?]] = [
    
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
