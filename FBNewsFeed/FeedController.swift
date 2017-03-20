//
//  ViewController.swift
//  FBNewsFeed
//
//  Created by Morphley on 20.03.17.
//  Copyright © 2017 Morphley. All rights reserved.
//

import UIKit

let cellId = "cellId"

class FeedController: UICollectionViewController, UICollectionViewDelegateFlowLayout{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Facebook Feed"
        collectionView?.backgroundColor = UIColor(white: 0.95, alpha: 1) // make it gray
        
        collectionView?.register(FeedCell.self, forCellWithReuseIdentifier: cellId ) //register the class
        
        collectionView?.alwaysBounceVertical = true // cells bounce as you drag it
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath)
        
        
    }
    
    
    // here we can specify the exact size of a cell
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 50)
    }
}

class FeedCell: UICollectionViewCell{
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        setupViews()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let nameLabel: UILabel = {
        
        let label = UILabel()
        label.text = "Sample Text"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.boldSystemFont(ofSize: 14)
    return label
    }()
    
    
    
    
    func setupViews(){
        backgroundColor = UIColor.white
        addSubview(nameLabel)
     addConstraints(NSLayoutConstraint.constraints(withVisualFormat:"H:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": nameLabel])) //
     addConstraints(NSLayoutConstraint.constraints(withVisualFormat:"V:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": nameLabel]))

        
        
        
    }
}
