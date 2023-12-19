//
//  SafariView.swift
//  Apple-Frameworks
//
//  Created by Turner Naef on 11/9/23.
//

import SwiftUI
import SafariServices

struct SafariView: UIViewControllerRepresentable {
    
    let url: URL
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) ->
        SFSafariViewController {
        SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context:
        UIViewControllerRepresentableContext<SafariView>) {}
}
