//
//  ChatListView.swift
//  ChatAppWithMVVM
//
//  Created by Dev on 2021/03/11.
//

import SwiftUI

struct ChatListState {
    var chats: [AnyViewModel<ChatDetailState, ChatDetailInput>]
}

extension ChatDetailState: Identifiable {
    var id: Chat.ID {
        chat.id
    }
}

struct ChatListView: View {
    
    @EnvironmentObject
    var viewModel: AnyViewModel<ChatListState, Never>
    
    var body: some View {
        NavigationView {
            List(viewModel.chats) { viewModel in
                NavigationLink(
                    destination:
                        ChatDetailView().environmentObject(viewModel)) {
                    ChatCell(chat: viewModel.state.chat)
                }
            }
            .navigationTitle("Chats")
        }
    }
}

struct ChatListView_Previews: PreviewProvider {
    static var previews: some View {
        ChatListView()
    }
}
