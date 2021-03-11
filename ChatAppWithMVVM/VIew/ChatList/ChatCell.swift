//
//  ChatCell.swift
//  ChatAppWithMVVM
//
//  Created by Dev on 2021/03/11.
//

import SwiftUI

struct ChatCell: View {
    let chat: Chat
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(chat.title)
                .font(.headline)
            
            Text(chat.subtitle)
                .font(.footnote)
                .foregroundColor(Color.gray)
        }
    }
}

struct ChatCell_Previews: PreviewProvider {
    static var previews: some View {
        ChatCell(chat: Chat(id: "1", title: "11", subtitle: "1111"))
    }
}
