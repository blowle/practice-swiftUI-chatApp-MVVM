//
//  ChatListViewModel.swift
//  ChatAppWithMVVM
//
//  Created by Dev on 2021/03/11.
//

import Foundation

class ChatListViewModel: ViewModel {
    
    @Published
    var state: ChatListState
    
    init(chatService: ChatService) {
        let ViewModels = chatService.fetchChats().map {
            AnyViewModel(ChatDetailViewModel(chat: $0, chatService: chatService))
        }
        self.state = ChatListState(chats: ViewModels)
    }
    
    func trigger(_ input: Never) {
        
    }
}
