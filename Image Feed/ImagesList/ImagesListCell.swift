import UIKit

final class ImagesListCell: UITableViewCell {
    static let reuseIdentifier = "ImagesListCell"
    @IBOutlet var cellImage: UIImageView!
    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var likeButton: UIButton!
    @IBOutlet var gradientView: UIView!
    
    
    override func layoutSubviews() {
        gradientView.layer.sublayers = nil
        setupGradient()
    }
    
    override func prepareForReuse() {
        gradientView.layer.sublayers = nil
    }
    
    func setupGradient() {
        //Добавляю скругление для gradientView
        gradientView.clipsToBounds = true
        gradientView.layer.cornerRadius = 10
        gradientView.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMaxYCorner]
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = gradientView.bounds
        let color1 = UIColor(red: 26, green: 27, blue: 34, alpha: 0)
        let color2 = UIColor(red: 26, green: 27, blue: 34, alpha: 0.2)
        gradientLayer.colors = [color1.cgColor, color2.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0.5)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.5)
        gradientView.layer.insertSublayer(gradientLayer, at: 0)
    }
    
}
