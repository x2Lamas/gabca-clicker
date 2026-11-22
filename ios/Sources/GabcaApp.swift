import SwiftUI
import WebKit

@main
struct GabcaApp: App {
    var body: some Scene {
        WindowGroup { GameView().ignoresSafeArea() }
    }
}

// Hra je stejný index.html jako web, workflow ho kopíruje do ios/www.
struct GameView: UIViewRepresentable {
    func makeUIView(context: Context) -> WKWebView {
        let web = WKWebView()
        web.isOpaque = false
        web.backgroundColor = .black
        web.scrollView.bounces = false
        let url = Bundle.main.url(forResource: "index", withExtension: "html", subdirectory: "www")!
        web.loadFileURL(url, allowingReadAccessTo: url.deletingLastPathComponent())
        return web
    }
    func updateUIView(_ view: WKWebView, context: Context) {}
}
