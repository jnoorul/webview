//
//  BottomNavigationView.swift
//
//  Created by NoorulAmeen on 13/12/20.
//

import SwiftUI
import WebKit

struct BottomNavigationView: View {
    let baseUrl = "http://192.168.86.211:3000"
    
    var body: some View {
        let portfolioPage = "\(baseUrl)/portfolio"
        let insightsPage = "\(baseUrl)/insights"
        let tradePage = "\(baseUrl)/trade"
        let instrumentsPage = "\(baseUrl)/instruments"
        
        TabView {
            WebView(request: URLRequest(url: URL(string: portfolioPage)!))
                 .tabItem {
                     Image(systemName: "rectangle.stack.person.crop")
                     Text("Portfolio")
             }
            WebView(request: URLRequest(url: URL(string: insightsPage)!))
                 .tabItem {
                     Image(systemName: "lightbulb")
                     Text("Insights")
             }
            WebView(request: URLRequest(url: URL(string: tradePage)!))
                 .tabItem {
                     Image(systemName: "arrow.left.arrow.right")
                     Text("Trade")
             }
            WebView(request: URLRequest(url: URL(string: instrumentsPage)!))
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
