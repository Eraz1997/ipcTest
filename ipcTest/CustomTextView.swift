import UIKit

// MARK: - App view

class CustomTextView: UITextView {
  // MARK: Initializers

  override init(frame: CGRect, textContainer: NSTextContainer?) {
    super.init(frame: frame, textContainer: textContainer)
    self.setup()
    self.style()
  }

  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  // MARK: Setup

  func setup() {
  }

  // MARK: Style

  func style() {
    Self.Style.textView(self)
  }
}

// MARK: - Style helpers

extension CustomTextView {
  enum Style {
    static func textView(_ textView: UITextView) {
      textView.layer.borderWidth = 1
      textView.layer.borderColor = UIColor.black.cgColor
    }
  }
}
