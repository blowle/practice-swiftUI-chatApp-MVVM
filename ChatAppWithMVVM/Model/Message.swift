//
//  Message.swift
//  ChatAppWithMVVM
//
//  Created by Dev on 2021/03/11.
//

import Foundation

struct Message: Identifiable {
    var id: String
    var chatId: String
    var date: Date
    var sender: String
    var content: String
    
}
