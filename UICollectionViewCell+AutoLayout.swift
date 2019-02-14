import UIKit

class ViewController: UIViewController {

lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        ...
        layout.estimatedItemSize = CGSize(width: Styles.Sizes.screenW, height: 10)
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        ...
        return cv
    }()

    ....
    
}

class CollectionViewCell: UICollectionViewCell {
    
    lazy var width: NSLayoutConstraint = {
        let width = contentView.widthAnchor.constraint(equalToConstant: bounds.size.width)
        width.isActive = true
        return width
    }()

    override init(frame: CGRect) {
        super.init(frame: frame) 
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func systemLayoutSizeFitting(_ targetSize: CGSize, withHorizontalFittingPriority horizontalFittingPriority: UILayoutPriority, verticalFittingPriority: UILayoutPriority) -> CGSize {
        width.constant = bounds.size.width
        return contentView.systemLayoutSizeFitting(CGSize(width: targetSize.width, height: 1))
    }
    
}
