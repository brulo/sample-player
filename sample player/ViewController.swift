
import UIKit
import AVFoundation

class ViewController: UIViewController {

    var audioPlayer: AVAudioPlayer?
    var snareUrl:URL? //= Bundle.main.url(forResource: "SnareDrum", withExtension: "wav")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        snareUrl = Bundle.main.url(forResource: "KickDrum", withExtension: "wav")
    }
    
    @IBAction func KickBut(_ sender: UIButton) {
        playSound(soundURL: snareUrl)
    }

    @IBAction func playSound(soundURL: URL?) {
        if(soundURL != nil)
        {
            do {
                audioPlayer = try AVAudioPlayer(contentsOf:soundURL!)
                audioPlayer?.play()
            }
            catch {
                print("ViewController::playSound() - couldnt get AVAudioPlayer!")
            }
        }
        else
        {
            print("ViewController::playSound() - soundURL was nil!")
        }
    }
}
