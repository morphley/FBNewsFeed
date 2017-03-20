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
        
       // collectionView?.register(<#T##cellClass: AnyClass?##AnyClass?#>, forCellWithReuseIdentifier: )
        
    }
    
//    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return 3
//    }
//    
    
  
    
    


}

