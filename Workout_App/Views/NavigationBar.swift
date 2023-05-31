//
//  BasicView.swift
//  Workout_App
//
//  Created by James Meegan on 5/31/23.
//

import Foundation
import SwiftUI

import BottomBar_SwiftUI

let items: [BottomBarItem] = [
    BottomBarItem(icon: "house.fill", title: "Home", color: .purple),
    BottomBarItem(icon: "dumbbell", title: "Workout", color: .pink),
    BottomBarItem(icon: "chart.bar", title: "Charts", color: .orange),
    BottomBarItem(icon: "gear.circle", title: "Settings", color: .blue)
]

struct NavigationBar: View {
    let item: BottomBarItem

    var detailText: String {
    "\(item.title) Detail"
}


var destination: some View {
    Text(detailText)
        .navigationBarTitle(Text(detailText))
}

var navigateButton: some View {
    NavigationLink(destination: destination) {
        ZStack {
            Rectangle()
                .fill(item.color)
                .cornerRadius(8)
                .frame(height: 52)
                .padding(.horizontal)

            Text("Navigate")
                .font(.headline)
                .foregroundColor(.white)
        }
    }
}


var body: some View {
    VStack {
        Spacer()

        Spacer()

        navigateButton
        }
    }
}
