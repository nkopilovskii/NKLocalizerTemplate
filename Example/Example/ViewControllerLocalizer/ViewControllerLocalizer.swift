//  NKLocalizerTemplate
//  Generated with NKLocalizerCodeGen
//
//  ViewControllerLocalizer.swift
//
//  Created by nkopilovskii
//  Copyright © nkopilovskii. All rights reserved.
//

import Foundation

//MARK: - ViewControllerLocalizer
class ViewControllerLocalizer: NKLocalizer<ViewController> {
  typealias LanguageKey = NKLocalizer<ViewController>.LanguageKey
  
  //MARK: ViewControllerLocalizer.LocalizedKey
  enum LocalizedKey: String, Equatable {
    case title
    case body
    case btnLanguage
  }
  
  func localizedString(for key: LocalizedKey) -> String {
    return localizedString(for:key.rawValue)
  }
}
