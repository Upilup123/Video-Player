//
//  VideoPlayerViewController.swift
//  Video Player
//
//  Created by Rino Aziz on 9/26/17.
//  Copyright © 2017 RINO AZIZ. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class VideoPlayerViewController: UIViewController {
    
    var PlayerViewContorller = AVPlayerViewController()
    var PlayerView = AVPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let fileURL = NSURL(fileURLWithPath: "/Users/Admin/Desktop/Face Detection - Making A Face Detector In Xcode 9 (Swift 4).mp4")
        PlayerView = AVPlayer(url: fileURL as URL)
        PlayerViewContorller.player = PlayerView
        
        self.present(PlayerViewContorller, animated: true){
            self.PlayerViewContorller.player?.play()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
