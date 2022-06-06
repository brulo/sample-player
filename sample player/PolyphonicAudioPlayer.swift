import Foundation
import AVFoundation

let NUM_VOICES = 16

class PolyphonicAudioPlayer
{
    var audioPlayer = [AVAudioPlayer?](repeating: nil, count:NUM_VOICES)
    var audioPlayerIndex = 0
    var soundURL:URL?
    
    func setSoundUrl(soundURL:URL?) {
        self.soundURL = soundURL
    }
    
    func playSound() {
        playSound(soundURL: soundURL)
    }
    
    func playSound(soundURL: URL?) {
        if(soundURL != nil)
        {
            do {
                audioPlayer[audioPlayerIndex] = try AVAudioPlayer(contentsOf:soundURL!)
                audioPlayer[audioPlayerIndex]?.play()
                audioPlayerIndex += 1
                if(audioPlayerIndex >= audioPlayer.count) {
                    audioPlayerIndex = 0;
                }
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
