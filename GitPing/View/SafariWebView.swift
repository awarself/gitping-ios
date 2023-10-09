import SwiftUI
import SafariServices

struct SafariWebView: UIViewControllerRepresentable {
    let urlString: String
    
    func makeUIViewController(context: Context) -> SFSafariViewController {
        return SFSafariViewController(url: URL(string: urlString)!)
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: Context) {}
}

 
