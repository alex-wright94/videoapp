//
//  Model.swift
//  videoapp
//
//  Created by Alex Wright on 5/26/20.
//  Copyright © 2020 Alex Wright. All rights reserved.
//

import Foundation



class Model {
    
    func getVideos() {
        
//         create a url project
        let url = URL(string: Constants.API_URL)
        
        guard url != nil else{
            return
        }
        
        
//        get a URLSession Project
        let session = URLSession.shared
        
//        get a data task from urlsession object
        
        let dataTask = session.dataTask(with: url!) { (data, response, error) in
            
//            check if there were any errors
            if error != nil || data == nil {
                return
            }
            
            do {
                
                //            parsing json data into video objects
                let decoder = JSONDecoder()
                decoder.dateDecodingStrategy = .iso8601
                
                let response = try decoder.decode(Response.self, from: data!)
             
                dump(response)
            }
            catch {
                
            }
            
            
        }
//         kick off the task
        dataTask.resume()
        
                
    }
    
}
