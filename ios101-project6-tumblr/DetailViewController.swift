//
//  DetailViewController.swift
//  ios101-project6-tumblr
//
//  Created by Richard Martinez on 10/17/23.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {

    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var overviewLabel: UITextView!
    
    
    var post: Post!

    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    private func configureUI() {
        overviewLabel.text = post.caption.trimHTMLTags()
        if let photo = post.photos.first {
            let url = photo.originalSize.url
            Nuke.loadImage(with: url, into: ImageView) // fixed here
        }
    }
}
