//
//  MusicListVC.swift
//  SwappingScreens
//
//  Created by ricardo silva on 17/02/2017.
//  Copyright © 2017 ricardo silva. All rights reserved.
//

import UIKit

class MusicListVC: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.red
    }

    @IBAction func backBtnPressed(_ sender: Any) {

        dismiss(animated: true, completion: nil)

    }

    @IBAction func load3rdScreenPressed(_ sender: Any) {

        let songTitle = "Quit Playing Games With My Heart"

        performSegue(withIdentifier: "PlaySongVC", sender: songTitle)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? PlaySongVC {
            if let song = sender as? String {
                destination.selectedSong = song
            }
        }
    }
}
