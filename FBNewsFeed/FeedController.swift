//
//  ViewController.swift
//  FBNewsFeed
//
//  Created by Morphley on 20.03.17.
//  Copyright © 2017 Morphley. All rights reserved.
//

import UIKit

let cellId = "cellId"

class FeedController: UICollectionViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Facebook Feed"
        collectionView?.backgroundColor = UIColor(white: 0.95, alpha: 1) // make it gray
        
        collectionView?.register(FeedCell.self, forCellWithReuseIdentifier: cellId ) //register the class
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath)
        
        
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
    
    
    func setupViews(){
        
        backgroundColor = UIColor.white
    
    
    }
}
