import UIKit

// MARK: - App view

class AppView: UIView {
  // MARK: Subviews

  private let textView = CustomTextView()
  private let randomButton = UIButton()

  // MARK: Initializers

  override init(frame: CGRect) {
    super.init(frame: frame)
    self.setup()
    self.style()
  }

  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  // MARK: Setup

  func setup() {
    self.addSubview(self.textView)
    self.addSubview(self.randomButton)
  }

  // MARK: Style

  func style() {
    Self.Style.background(self)
    Self.Style.randomButton(self.randomButton)
  }

  // MARK: Layout

  override func layoutSubviews() {
    super.layoutSubviews()

    self.textView.frame = CGRect(
      x: 12,
      y: 64,
      width: self.bounds.width - 24,
      height: 32
    )

    let randomButtonSize = self.randomButton.sizeThatFits(.init(width: self.bounds.width, height: 32))
    self.randomButton.frame = CGRect(
      x: (self.bounds.width - randomButtonSize.width) / 2,
      y: 112,
      width: randomButtonSize.width,
      height: randomButtonSize.height
    )
  }
}

// MARK: - Style helpers

extension AppView {
  enum Style {
    static func background(_ view: UIView) {
      view.backgroundColor = .white
    }

    static func randomButton(_ button: UIButton) {
      button.setTitle("Randomize", for: .normal)
      button.setTitleColor(.black, for: .normal)
      button.configuration = .bordered()
    }
  }
}
