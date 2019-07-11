//
//Copyright (c) 2019 nkopilovskii <nkopilovskii@gmail.com>
//
//Permission is hereby granted, free of charge, to any person obtaining a copy
//of this software and associated documentation files (the "Software"), to deal
//in the Software without restriction, including without limitation the rights
//to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//copies of the Software, and to permit persons to whom the Software is
//furnished to do so, subject to the following conditions:
//
//The above copyright notice and this permission notice shall be included in
//all copies or substantial portions of the Software.
//
//THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//THE SOFTWARE.
//
//  NKLocalizer.swift
//
//
//  Created by Nick Kopilovskii on 1/28/19.
//  Copyright © 2019 Nick Kopilovskii. All rights reserved.
//  https://github.com/nkopilovskii/NKLocalizerTemplate
//

import Foundation

let kNKLocalizerAppLanguage = "com.NKLocalizer.kLocalizerAppLanguage"
let kNKLocalizerLanguageNotification = "com.NKLocalizer.kNKLocalizerLanguageNotification"

//MARK: - NKLocalizer base generic class
class NKLocalizer<Type> {

  
  enum LanguageKey: String {
    case Base
    //TODO: Add supported languages identifiers
    
    init(_ rawValue: String) {
      self = LanguageKey(rawValue: rawValue) ?? .Base
    }
  }
  
  private(set) var language: LanguageKey
  private(set) var tableName: String
  private(set) var bundle: Bundle
  
  init(language: LanguageKey? = nil) {
    self.language = language ?? NKLocalizer.LanguageKey.appLanguage
    self.tableName = String(describing: Type.self)
    
    if let path = Bundle.main.path(forResource: (language ?? .Base).rawValue, ofType: "lproj"), let bundle = Bundle(path: path) {
      self.bundle = bundle
    } else {
      self.bundle = .main
    }
  }
  
  func localizedString(for key: String) -> String {
    return bundle.localizedString(forKey: key, value: key, table: tableName)
  }
  
  final func changeAppLanguage(_ languageKey: LanguageKey) {
    UserDefaults.standard.set(languageKey.rawValue, forKey: kNKLocalizerAppLanguage)
    NotificationCenter.default.post(name: NSNotification.Name(kNKLocalizerLanguageNotification), object: nil)
  }
  
}
//MARK: -


extension NKLocalizer.LanguageKey {
  
  static var appLanguage: NKLocalizer.LanguageKey {
    guard let currentLocale = Locale.preferredLanguages.first else {
      return .Base
    }
    return NKLocalizer.LanguageKey(currentLocale)
  }
  
}
