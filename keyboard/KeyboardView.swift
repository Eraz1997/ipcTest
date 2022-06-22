import UIKit

// MARK: - Keyboard view

class KeyboardView: UIView {
  // MARK: Variables

  var delegate: KeyboardDelegate?
  private var randomCharacter: String = "a"

  // MARK: Subviews

  private let randomButton = UIButton()
  private let colorButton = UIButton()

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
    // Hierarchy
    self.addSubview(self.randomButton)
    self.addSubview(self.colorButton)

    // Random button tap
    let randomButtonGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.didTapRandomButton))
    self.randomButton.addGestureRecognizer(randomButtonGestureRecognizer)

    // Color button tap
    let colorButtonGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.didTapColorButton))
    self.colorButton.addGestureRecognizer(colorButtonGestureRecognizer)
  }

  // MARK: Input handlers

  @objc func didTapRandomButton() {
    self.delegate?.write(self.randomCharacter)
  }

  @objc func didTapColorButton() {
  }

  // MARK: Style

  func style() {
    Self.Style.randomButton(self.randomButton, text: self.randomCharacter)
    Self.Style.colorButton(self.colorButton)
  }

  // MARK: Layout

  override func layoutSubviews() {
    super.layoutSubviews()

    let randomButtonSize = self.randomButton.sizeThatFits(.init(width: self.bounds.width, height: 32))
    self.randomButton.frame = CGRect(
      x: (self.bounds.width - randomButtonSize.width) / 2,
      y: 32,
      width: randomButtonSize.width,
      height: randomButtonSize.height
    )

    let colorButtonSize = self.colorButton.sizeThatFits(.init(width: self.bounds.width, height: 32))
    self.colorButton.frame = CGRect(
      x: (self.bounds.width - colorButtonSize.width) / 2,
      y: 72,
      width: colorButtonSize.width,
      height: colorButtonSize.height
    )
  }
}

// MARK: - Style helpers

extension KeyboardView {
  enum Style {
    static func randomButton(_ button: UIButton, text: String) {
      button.setTitle(text, for: .normal)
      button.setTitleColor(.black, for: .normal)
      button.configuration = .borderedTinted()
    }

    static func colorButton(_ button: UIButton) {
      button.setTitle("Change color", for: .normal)
      button.setTitleColor(.black, for: .normal)
      button.configuration = .borderedTinted()
    }
  }
}
