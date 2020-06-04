//
//  Constants.swift
//  videoapp
//
//  Created by Alex Wright on 5/26/20.
//  Copyright © 2020 Alex Wright. All rights reserved.
//

import Foundation



struct Constants {
    
    static var API_KEY = "AIzaSyB2AhmJ-wuS2MV-iFrxAhbf5v84ossagW8"
    static var PLAYLIST_ID = "PLBCF2DAC6FFB574DE"
    static var API_URL = "  'https://www.googleapis.com/youtube/v3/playlistItems?part=snippet%2CcontentDetails&maxResults=25&playlistId=\(Constants.PLAYLIST_ID)&key=\(Constants.API_KEY)"

}
