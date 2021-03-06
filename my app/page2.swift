//
//  TableViewController4.swift
//  PageSlideApplication
//
//  Created by 橋詰明宗 on 2015/11/19.
//  Copyright © 2015年 橋詰明宗. All rights reserved.
//

import UIKit


class page2: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    
    
    @IBOutlet weak var myCollectionView: UICollectionView!
//    @IBOutlet weak var myCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.myCollectionView.delegate = self
        self.myCollectionView.dataSource = self
        
        
        
        
        let nib:UINib = UINib(nibName: "page2cell", bundle: nil)
        
        myCollectionView.registerNib(nib, forCellWithReuseIdentifier: "Cell")
        
        
        myCollectionView.delegate = self
        
        
        
        let nipName=UINib(nibName: "page2cell", bundle:nil)
        
        myCollectionView.registerNib(nipName, forCellWithReuseIdentifier: "Cell")
        
        
        
        
    }
    
    
    /*
    Cellの総数を返す
    */
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        
        return 3
    }
    
    func collectionView(collectionView: UICollectionView,numberOfItemsInSection section: Int) ->Int{
        return 1
        
        
    }
    /*
    Cellに値を設定する
    */
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        
        
        let  cell = myCollectionView.dequeueReusableCellWithReuseIdentifier("Cell", forIndexPath: indexPath) as! page2cell
        
        if indexPath.section == 0{
            cell.bangou.text = "1"
            cell.syasin.image = UIImage(named: "sukato.jpg")
            
        }else if indexPath.section == 1{
            cell.bangou.text = "2"
            cell.syasin.image = UIImage(named: "sunika.jpg")
            
        }else if indexPath.section == 2{
            cell.bangou.text = "3"
            cell.syasin.image = UIImage(named: "piasu.jpg")
        }
        
        return cell
    }
    
    /*
    Cellのサイズを返す
    */
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        return CGSizeMake(self.view.frame.size.width/2-12, 180)
    }
    
    
    
}