//
//  FeedView.swift
//  loginPage
//
//  Created by Саша on 31.01.2021.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        VStack {
            Text("News Feed")
                .font(.largeTitle)
                .bold()
        }.position(x: 180, y: 100)
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
