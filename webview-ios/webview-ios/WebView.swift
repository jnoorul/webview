//
//  WebView.swift
//  PickMyCollege
//
//  Created by NoorulAmeen on 14/12/20.
//

import SwiftUI

import WebKit

struct WebView: UIViewRepresentable {
    let request: URLRequest
    
    func makeUIView(context: Context) -> WKWebView {
        let configuration = WKWebViewConfiguration()
        configuration.setURLSchemeHandler(CustomeSchemeHandler(), forURLScheme: "dpb")
        return WKWebView(frame: .zero,configuration:configuration)
    }
    
    func updateUIView(_ uiView:WKWebView, context: Context) {
        uiView.load(request)
    }
}


struct WebView_Previews: PreviewProvider {
    static var previews: some View {
        WebView(request: URLRequest(url: URL(string: "www.apple.com")!))
    }
}
