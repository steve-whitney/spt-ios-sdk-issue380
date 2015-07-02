import UIKit

class ViewController: UIViewController {

    var sptProx: ISpotifyProxy!
    var playlistMgr: IPlaylistManager!

    @IBAction func loginDidTouchDown(sender: AnyObject) {
        NSLog("\(__FUNCTION__) invoked.")
        sptProx.loginViaUI()
    }
    @IBAction func crashappDidTouchDown(sender: AnyObject) {
        NSLog("\(__FUNCTION__) invoked.")
        playlistMgr.start()

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        sptProx = DefaultSpotifyProxyImpl(underneathViewController: self as! UIViewController)
        playlistMgr = DefaultSpotifyPlaylistManager(spotifyProxy: sptProx)
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

