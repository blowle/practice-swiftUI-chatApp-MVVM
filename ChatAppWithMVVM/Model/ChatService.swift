//
//  ChatService.swift
//  ChatAppWithMVVM
//
//  Created by Dev on 2021/03/11.
//

import Foundation

protocol ChatService {
    var currentUser: String? { get }
    func fetchChats() -> [Chat]
    func fetchMessages() -> [Message]
    
    // ignoring return values
    @discardableResult
    func addMessage(_ content: String, to chat: Chat) -> Message
}
