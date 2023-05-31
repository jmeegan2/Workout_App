//
//  ContentView.swift
//  Workout_App
//
//  Created by James Meegan on 5/29/23.
//

import SwiftUI

import SwiftUI
import BottomBar_SwiftUI

struct ContentView : View {
    @State private var selectedIndex: Int = 0

    var selectedItem: BottomBarItem {
        items[selectedIndex]
    }

var body: some View {
        NavigationView {
            VStack {
                NavigationBar(item: selectedItem)
                    .navigationBarTitle(Text(selectedItem.title))
                BottomBar(selectedIndex: $selectedIndex, items: items)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
