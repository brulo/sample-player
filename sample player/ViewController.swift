import UIKit

class ViewController: UIViewController {

    var polyAudioPlayer:PolyphonicAudioPlayer = PolyphonicAudioPlayer.init()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        polyAudioPlayer.setSoundUrl(soundURL:Bundle.main.url(forResource: "KickDrum", withExtension: "wav"))
    }
    
    @IBAction func KickBut(_ sender: UIButton) {
        polyAudioPlayer.playSound()
    }

}
