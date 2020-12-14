//
//  CustomURLSchemeHandler.swift
//  PickMyCollege
//
//  Created by NoorulAmeen on 14/12/20.
//

import WebKit

class CustomeSchemeHandler : NSObject,WKURLSchemeHandler {
    func webView(_ webView: WKWebView, start urlSchemeTask: WKURLSchemeTask) {
        DispatchQueue.global().async {
            if let url = urlSchemeTask.request.url, url.scheme == "dpb" {
                if let queryItems = URLComponents(url: url, resolvingAgainstBaseURL: true)?.queryItems {
                    print("custom protocal url -- \(url)")
                    for queryParams in queryItems {
                        print("custom protocal for page transition to \(queryParams.name) \(queryParams.value!)  called")
                        urlSchemeTask.didReceive(URLResponse())
                        urlSchemeTask.didFinish()
                    }
                }
            }
        }
    }
    
    func webView(_ webView: WKWebView, stop urlSchemeTask: WKURLSchemeTask) {
        print("Error while executing custom url scheme handler")
    }
}
