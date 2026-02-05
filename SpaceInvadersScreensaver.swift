import ScreenSaver
import WebKit

final class SpaceInvadersScreensaver: ScreenSaverView {

    private var webView: WKWebView!

    override init?(frame: NSRect, isPreview: Bool) {
        super.init(frame: frame, isPreview: isPreview)

        let config = WKWebViewConfiguration()
        webView = WKWebView(frame: self.bounds, configuration: config)
        webView.autoresizingMask = [.width, .height]
        addSubview(webView)

        // Cargar el HTML local
        let bundle = Bundle(for: type(of: self))
        if let htmlPath = bundle.path(forResource: "index", ofType: "html") {
            let htmlURL = URL(fileURLWithPath: htmlPath)
            // Permitir que cargue recursos relativos (main.js, assets, etc.)
            webView.loadFileURL(htmlURL, allowingReadAccessTo: htmlURL.deletingLastPathComponent())
        } else {
            NSLog("SpaceInvadersScreensaver: No se encontró index.html en el bundle")
        }

        animationTimeInterval = 1.0 / 30.0
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    override func animateOneFrame() {
        // No hace falta render manual: el JS anima en el WebView.
    }
}
