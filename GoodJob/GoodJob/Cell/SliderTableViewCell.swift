//
//  SliderTableViewCell.swift
//  GoodJob
//
//  Created by hoang on 16/01/2021.
//

import UIKit

class SliderTableViewCell: UITableViewCell {

    @IBOutlet weak var bannerCollectionView: UICollectionView!
    let cellMarginsize: CGFloat = 10
    var currenIndex = 0
    let arr = ["","","","","","","","","","","",""]
    
    override func awakeFromNib() {
        super.awakeFromNib()

        bannerCollectionView.dataSource = self
        bannerCollectionView.delegate = self
        bannerCollectionView.register(UINib(nibName: String(describing: ScrollViewCollectionViewCell.self), bundle: nil), forCellWithReuseIdentifier: String(describing: ScrollViewCollectionViewCell.self))
        startTimer()
        
    }
    func startTimer() {
        let _ = Timer.scheduledTimer(timeInterval: 3.0, target: self, selector: #selector(scrollToNextCell), userInfo: nil, repeats: true);

    }
    @objc func scrollToNextCell(){

        if currenIndex < arr.count - 1 {
            currenIndex = currenIndex + 1
        }else {
            currenIndex = 0
        }
        bannerCollectionView.scrollToItem(at: IndexPath(item: currenIndex, section: 0), at: .right, animated: true)

    }
    func configCell () -> CGFloat{
        return bannerCollectionView.height
    }
   
}

extension SliderTableViewCell : UICollectionViewDataSource , UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: ScrollViewCollectionViewCell.self), for: indexPath) as! ScrollViewCollectionViewCell
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.size.width, height: collectionView.frame.size.height)
    }
}
