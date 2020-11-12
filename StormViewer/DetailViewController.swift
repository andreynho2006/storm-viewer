//
//  DetailViewController.swift
//  StormViewer
//
//  Created by Andrei Cirlan on 12/11/2020.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    var selectedImage: String?  // optional string
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = selectedImage
        navigationItem.largeTitleDisplayMode = .never
            
        if let imageToLoad = selectedImage {  // if there is a image
            imageView.image = UIImage(named: imageToLoad)  // set imageView,image to the image
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }
}
