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
    #warning("Fill enum with needed keys")
    //TODO: Fill enum with needed keys
    case replaceMe
  }
  
  func localizedString(for key: LocalizedKey) -> String {
    return localizedString(for:key.rawValue)
  }
}
