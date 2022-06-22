//
//  KeyboardViewController.swift
//  keyboard
//
//  Created by Enrico Schifano on 20/05/22.
//

import UIKit

class KeyboardViewController: UIInputViewController {
  // MARK: Initialization

  init() {
    super.init(nibName: nil, bundle: nil)
  }

  required init?(coder: NSCoder) {
    super.init(coder: coder)
  }

  // MARK: Load view

  override func loadView() {
    let view = KeyboardView()
    view.delegate = self
    self.view = view
  }
}
