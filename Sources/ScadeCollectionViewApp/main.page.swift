import ScadeExtensions
import ScadeKit
import ScadeUI

class MainPageAdapter: SCDLatticePageAdapter {

  // page adapter initialization
  override func load(_ path: String) {
    super.load(path)

    if let cv = self.collectionView as? SCDWidgetsCollectionView {
      cv.elementProvider { (text: String, element) in
        element["image", as: SCDWidgetsImage.self]?.url = "Assets/\(text)"
      }

      cv.rows = 6
      cv.items = [
        "1.jpg", "2.jpg", "3.jpg", "4.jpg", "5.jpg", "1.jpg", "2.jpg", "3.jpg", "4.jpg", "5.jpg",
        "1.jpg", "2.jpg", "3.jpg", "4.jpg", "5.jpg", "1.jpg", "2.jpg", "3.jpg", "4.jpg", "5.jpg",
        "1.jpg", "2.jpg", "3.jpg", "4.jpg", "5.jpg", "1.jpg", "2.jpg", "3.jpg", "4.jpg", "5.jpg",
        "1.jpg", "2.jpg", "3.jpg", "4.jpg", "5.jpg",
      ]
    }
  }
}
