
import UIKit
import SwiftUI

class Tabbed_Tutorial: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout  {
    @IBOutlet weak var tutorialscroll: UIScrollView!
    @IBOutlet weak var tutorialview: UIView!
    var collectionview: UICollectionView!
    @IBOutlet weak var cardview: UIView!
    var cellId = "Cell"

    override func viewDidLoad() {
        tutorialview.layer.cornerRadius = 50
        tutorialview.layer.masksToBounds = true
        
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
                layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
                layout.itemSize = CGSize(width: view.frame.width, height: 700)
                collectionview = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
                collectionview.dataSource = self
                collectionview.delegate = self
        collectionview.register(CategoryCell.self, forCellWithReuseIdentifier: cellId)
                collectionview.showsVerticalScrollIndicator = false
        collectionview.backgroundColor = UIColor.white;
//        tutorialview.addSubview(collectionview)
//        self.view.addSubview(tutorialview)
        super.viewDidLoad()
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionview.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! CategoryCell
        return cell
    }
}
class CategoryCell: UICollectionViewCell {  
    var items = ["Overtake","Turning","Slope","Parking","Reverse","Test6","Test7"]
    let cardview : UIView = {
        let card = UIView()
        card.layer.cornerRadius = 20.0
        card.layer.backgroundColor = UIColor.black.cgColor
        card.layer.shadowColor = UIColor.gray.cgColor
        card.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        card.layer.shadowRadius = 12.0
        card.layer.shadowOpacity = 0.7
        return card
    }()
    let titles: UILabel = {
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
//            label.center = CGPoint(x: 160, y: 285)
            label.textAlignment = .left
        return label
    }()
    let stackView: UIStackView = {
            let sv = UIStackView()
        sv.alignment = UIStackView.Alignment.center
        sv.distribution = UIStackView.Distribution.fillEqually
            sv.translatesAutoresizingMaskIntoConstraints = false;
            return sv
        }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        cardview.addSubview(titles)
        addSubview(cardview)
        addSubview(stackView)
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
