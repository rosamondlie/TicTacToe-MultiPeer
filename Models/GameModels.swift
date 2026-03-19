//
//  GameModels.swift
//  XsandOs
//
//  Created by Rosamond Patricia Selamat Lie on 19/03/26.
//

import Foundation

enum GameType{
    case single, bot, peer, undetermined
    
    var description: String{
        switch self {
        case .single:
            return "Share your Iphone/ Ipad and play againts a friend"
        case .bot:
            return "Play againts this Iphone/ Ipad"
        case .peer:
            return "Invite someone near you who has this app running to play"
        case .undetermined:
            return ""
        }
    }
}
