//
//  WebView.swift
//  HackerNews
//
//  Created by Andrey Solera on 10/7/21.
//

import SwiftUI
import WebKit


struct WebView: UIViewRepresentable {
    
    let urlString: String?
    
    func makeUIView(context: Context) -> WebView.UIViewType {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeUrlString = urlString {
            if let url = URL(string: safeUrlString) {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
    
}

struct WebView_Previews: PreviewProvider {
    static var previews: some View {
        WebView(urlString: "https://www.google.com").previewDevice(PreviewDevice(rawValue: "iPhone 11"))
    }
}
