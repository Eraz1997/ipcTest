import UIKit

// MARK: Delegate protocol

protocol KeyboardDelegate {
  func write(_ text: String)
}

// MARK: Delegate implementation

extension KeyboardViewController: KeyboardDelegate {
  func write(_ text: String) {
    self.textDocumentProxy.insertText(text)
  }
}
