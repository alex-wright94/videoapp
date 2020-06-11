//
//  ConstantsTemplate.swift
//  videoapp
//
//  Created by Alex Wright on 6/11/20.
//  Copyright © 2020 Alex Wright. All rights reserved.
//
//add your api keys and uncomment the code
import Foundation




struct Constants {

    static var API_KEY = ""
    static var PLAYLIST_ID = ""
    static var API_URL = "  'https://www.googleapis.com/youtube/v3/playlistItems?part=snippet%2CcontentDetails&maxResults=25&playlistId=\(Constants.PLAYLIST_ID)&key=\(Constants.API_KEY)"
 static var VIDEOCELL_ID = "VideoCell"

}

