//
//  Video.swift
//  videoapp
//
//  Created by Alex Wright on 5/26/20.
//  Copyright © 2020 Alex Wright. All rights reserved.
//

import Foundation



struct Video : Decodable {
    
    var videoID = ""
    var title = ""
    var description = ""
    var thumbnail = ""
    var published = Date()
    
    
    enum CodingKeys: String, CodingKey {
        
        case snippet
        case thumbnails
        case high
        case resourceId
        
        
        case published = "publishedAt"
        case title
        case description
        case thumbnail = "url"
        case videoID
        
    }
    
    init(from decoder : Decoder) throws  {
        
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        
        let snippetContainer = try container.nestedContainer(keyedBy: CodingKeys.self, forKey: .snippet)
        
//        parse title
        self.title = try snippetContainer.decode(String.self, forKey: .title)
//        parse description
        self.description = try snippetContainer.decode(String.self, forKey: .description)
//        parse publish date
        self.published = try snippetContainer.decode(Date.self, forKey: .published)
        
        
//        parse thumbnails
        
        let thumbnailContainer = try snippetContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .thumbnails)
        
        let highContainer = try thumbnailContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .high)
        
        self.thumbnail = try highContainer.decode(String.self, forKey: .thumbnail)
        
        
//        parse video id
        let resourceIdContainer = try snippetContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .resourceId)
        
        self.videoID = try resourceIdContainer.decode(String.self, forKey: .videoID)
        
        
    }
}
