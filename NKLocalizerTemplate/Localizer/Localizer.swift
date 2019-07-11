//  NKLocalizerTemplate
//  Generated with NKLocalizerCodeGen
//
//  $TYPE_NAMELocalizer.swift
//
//  Created by $USER
//  Copyright © $USER. All rights reserved.
//

import Foundation

//MARK: - $TYPE_NAMELocalizer
class $TYPE_NAMELocalizer: NKLocalizer<$TYPE_NAME> {
  typealias LanguageKey = NKLocalizer<$TYPE_NAME>.LanguageKey
  
  //MARK: $TYPE_NAMELocalizer.LocalizedKey
  enum LocalizedKey: String, Equatable {
    #warning("Fill enum with needed keys")
    //TODO: Fill enum with needed keys
    case replaceMe
  }
  
  func localizedString(for key: LocalizedKey) -> String {
    return localizedString(for:key.rawValue)
  }
}
