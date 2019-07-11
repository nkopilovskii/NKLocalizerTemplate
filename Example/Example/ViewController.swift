//
//  ViewController.swift
//  Example
//
//  Created by Nick Kopilovskii on 7/11/19.
//  Copyright © 2019  Nick Kopilovskii. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var lblTitle: UILabel!
  @IBOutlet weak var txtBody: UITextView!
  @IBOutlet weak var btnLanguage: UIButton!
  
  
  var localizer: ViewControllerLocalizer {
    return ViewControllerLocalizer()
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    localizeContent()
    NotificationCenter.default.addObserver(forName:  kNKLocalizerLanguageNotification, object: nil, queue: OperationQueue.main) { [weak self] _ in
      self?.localizeContent()
    }
  }

  deinit {
    NotificationCenter.default.removeObserver(self)
  }
  
  @IBAction func btnChangeLanguage(_ sender: Any) {
    var lang: ViewControllerLocalizer.LanguageKey
    switch localizer.language {
    case .Base:
      lang = .ru
    default:
      lang = .Base
    }
    
    ViewControllerLocalizer.changeAppLanguage(lang)
  }
  
  
  func localizeContent() {
    let localizer = self.localizer
    lblTitle.text = localizer.localizedString(for: .title)
    txtBody.text = localizer.localizedString(for: .body)
    btnLanguage.setTitle(localizer.localizedString(for: .btnLanguage), for: .normal)
  }

}

