//
//  ViewController.swift
//  Sound
//
//  Created by 河野文香 on 2021/05/06.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet var drumButton: UIButton!
    
    @IBOutlet var pianoButton: UIButton!
    
    let drumSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "drumSound")!.data)
    
    let pianoSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "pianoSound")!.data)
    
    //ドラムのタッチが始まった時に呼ばれる
    @IBAction func touchDownDrumButton() {
    //ドラムが鳴っている画像にする
        drumButton.setImage(UIImage(named: "drumPlayingImage"), for: .normal)
    //ドラムの音を巻き戻す
        drumSoundPlayer.currentTime = 0
        //ドラムの音を再生
        drumSoundPlayer.play()
    }
    //ドラムボタンの上でタッチが終わる時に呼ばれる
    @IBAction func touchUpDrumBotton() {
        //ドラムが鳴ってない画像に切り替える
        drumButton.setImage(UIImage(named: "drumImage" ), for: .normal)
        
    }
    //ピアノのタッチが始まった時に呼ばれる
    @IBAction func touchDownPianoButton() {
        //ピアノが鳴っている画像に切り替える
        pianoButton.setImage(UIImage(named: "pianoPlayingImage" ), for: .normal)
        //ピアノの音を巻き戻す
        pianoSoundPlayer.currentTime = 0
        //ピアノの音を再生する
        pianoSoundPlayer.play()
    }
    //ピアノボタンの上でタッチが終わる時に呼ばれる
    @IBAction func touchUpPianoButton() {
    //ピアノが鳴っていない画像に切り替える
    pianoButton.setImage(UIImage(named: "pianoImage"), for: .normal)
}
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
   
 }


