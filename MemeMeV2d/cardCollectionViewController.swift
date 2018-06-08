//
//  cardCollectionViewController.swift
//  MemeMeV2d
//
//  Created by Rick Mc on 5/13/18.
//  Copyright © 2018 Rick Mc. All rights reserved.
//

import Foundation
import UIKit

class memeCollectionViewController: UICollectionViewController
    
{
    
    @IBOutlet var memeCollectionView: UICollectionView!
    
    @IBOutlet weak var flowLayout: UICollectionViewFlowLayout!
    
    override func viewWillAppear(_ animated: Bool)
    {
        memeCollectionView.reloadData()
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        let space: CGFloat = 3.0
        let widthDimension = (view.frame.size.width - (2*space)) / 3.0
        let heightDimension = (view.frame.size.height - (2*space)) / 5.0

    }
    var memes: [Meme]!
    {
        let object = UIApplication.shared.delegate
        let appDelegate = object as! AppDelegate
        return appDelegate.myMemes
    }
    
    var myMemes = (UIApplication.shared.delegate as! AppDelegate).myMemes
    
    @objc func startEdit()
    {
        let controller = self.storyboard?.instantiateViewController(withIdentifier: "baseController")
        
        self.present(controller!, animated: true, completion: nil)
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return (UIApplication.shared.delegate as! AppDelegate).myMemes.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "memeCollectionCell", for: indexPath) as! memeCollectionCell
        
        let meme = (UIApplication.shared.delegate as! AppDelegate).myMemes[(indexPath as NSIndexPath).row]
        
        cell.highText?.text = meme.topTextField
        cell.lowText?.text = meme.bottomTextField
        cell.memeImage?.image = meme.originalImage
        
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath)
    {
        
        let detailController = self.storyboard?.instantiateViewController(withIdentifier: "MemeDetailController") as! MemeDetailController
        
        detailController.meme = (UIApplication.shared.delegate as! AppDelegate).myMemes[(indexPath as NSIndexPath).row]
        self.navigationController!.pushViewController(detailController, animated: true)
    }
    
    
    
}
