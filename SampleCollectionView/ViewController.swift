//
//  ViewController.swift
//  SampleCollectionView
//
//  Created by Enterpi mini mac on 8/25/16.
//  Copyright © 2016 Enterpi mini mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDataSource, UICollectionViewDelegate  {
    
    @IBOutlet weak var sampleCollectionView: UICollectionView!
    
    let reuseIdentifier = "cell"
    
    let insetValue: CGFloat = 30.0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    // make a cell for each cell index path
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        // get a reference to our storyboard cell
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath)
        // Use the outlet in our custom class to get a reference to the UILabel in the cell
                
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        
        if indexPath.item == 6{
            return CGSizeMake(collectionView.bounds.width - insetValue * 2,100)
        }else{
            return CGSizeMake(floor((collectionView.bounds.width - insetValue * 4)/3), 100)
        }
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAtIndex section: Int) -> CGFloat {
        
        return insetValue;
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAtIndex section: Int) -> CGFloat {
        return insetValue;
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAtIndex section: Int) -> UIEdgeInsets{
        
        return UIEdgeInsetsMake(insetValue, insetValue, insetValue, insetValue);
    }


}

