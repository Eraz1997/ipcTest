import UIKit

// MARK: - App view controller

class AppViewController: UIViewController {
  // MARK: Initialization

  init() {
    super.init(nibName: nil, bundle: nil)
  }

  required init?(coder: NSCoder) {
    super.init(coder: coder)
  }

  // MARK: Load view

  override func loadView() {
    self.view = AppView()
  }

  // MARK: On view did load

  override func viewDidLoad() {
    super.viewDidLoad()

//    let delegate = ServiceDelegate()
//    let listener = NSXPCListener.service()
//    listener.delegate = delegate;
//    listener.resume()
  }
}

