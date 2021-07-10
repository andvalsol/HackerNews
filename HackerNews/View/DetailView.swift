//
//  DetailView.swift
//  HackerNews
//
//  Created by Andrey Solera on 10/7/21.
//

import SwiftUI


struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com").previewDevice(PreviewDevice(rawValue: "iPhone 11"))
    }
}

