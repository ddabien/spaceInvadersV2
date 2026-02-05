import Cocoa
import ScreenSaver
import WebKit

class SpaceInvadersScreensaverView: ScreenSaverView {
    private var webView: WKWebView!
    
    override init?(frame: NSRect, isPreview: Bool) {
        super.init(frame: frame, isPreview: isPreview)
        
        let config = WKWebViewConfiguration()
        config.preferences.setValue(true, forKey: "allowFileAccessFromFileURLs")
        
        webView = WKWebView(frame: bounds, configuration: config)
        webView.autoresizingMask = [.width, .height]
        
        addSubview(webView)
        
        // Cargar el HTML local
        if let bundle = Bundle(for: type(of: self)),
           let htmlPath = bundle.path(forResource: "index", ofType: "html") {
            let htmlURL = URL(fileURLWithPath: htmlPath)
            webView.loadFileURL(htmlURL, allowingReadAccessTo: htmlURL.deletingLastPathComponent())
        }
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func draw(_ rect: NSRect) {
        NSColor.black.setFill()
        rect.fill()
    }
    
    override func animateOneFrame() {
        // WebView se anima solo
    }
    
    override var hasConfigureSheet: Bool {
        return false
    }
}
