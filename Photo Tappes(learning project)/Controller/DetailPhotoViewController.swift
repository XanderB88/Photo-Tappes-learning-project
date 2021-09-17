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
    
    @IBAction func sharedButton(_ sender: UIButton) {
        let sharedController = UIActivityViewController(activityItems: [image!], applicationActivities: nil)
        sharedController.completionWithItemsHandler = { _, bool, _, _ in
            if bool {
                print("Success")
            }
        }
        present(sharedController, animated: true, completion: nil)
    }
}
