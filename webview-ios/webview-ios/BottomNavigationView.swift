//
//  BottomNavigationView.swift
//  PickMyCollege
//
//  Created by NoorulAmeen on 13/12/20.
//

import SwiftUI
import WebKit

struct BottomNavigationView: View {
    var body: some View {
        TabView {
             PortfolioView()
                 .tabItem {
                     Image(systemName: "rectangle.stack.person.crop")
                     Text("Portfolio")
             }
            WebView(request: URLRequest(url: URL(string: "http://192.168.86.211:3000")!))
                 .tabItem {
                     Image(systemName: "lightbulb")
                     Text("Insights")
             }
             Text("Trade")
                 .tabItem {
                     Image(systemName: "arrow.left.arrow.right")
                     Text("Trade")
             }
            Text("Instruments")
                .tabItem {
                    Image(systemName: "doc.text.magnifyingglass")
                    Text("Instruments")
            }
            Text("Settings, Documents, etc")
                .tabItem {
                    Image(systemName: "ellipsis.circle")
                    Text("More")
            }
         }
    }
}

struct BottomNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        BottomNavigationView()
    }
}
