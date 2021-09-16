//
//  DetailPhotoViewController.swift
//  Photo Tappes(learning project)
//
//  Created by Alexander on 17.09.2021.
//

import UIKit

class DetailPhotoViewController: UIViewController {

    @IBOutlet weak var detailPhotoImageView: UIImageView!
   
    var image: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        detailPhotoImageView.image = image
  
    }
   
    @IBAction func sharedButton(_ sender: Any) {
   
    }
}
