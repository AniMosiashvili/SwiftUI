//
//  CardView.swift
//  Task_5
//
//  Created by Anna Harris on 06.08.25.
//

import SwiftUI

struct CardView<Content: View>: View {
    let title: String
    let content: Content

    init(title: String, @ViewBuilder content: () -> Content) {
        self.title = title
        self.content = content()
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(title)
                .font(.title3)
                .bold()
                .padding(.horizontal)

            content
                .padding(.horizontal)
                .padding(.top, 10)

        }
        .padding(.vertical)
        .background(Color(.systemBackground))
        .cornerRadius(15)
        .shadow(radius: 3)
        .padding(.horizontal)
    }
}
