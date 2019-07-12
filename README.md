
![Swift](https://img.shields.io/badge/Swift-5.0-orange.svg)
[![License](https://img.shields.io/badge/license-MIT-blue.svg?style=flat&color=yellow)](http://mit-license.org)
[![Platform](http://img.shields.io/badge/platform-ios-lightgrey.svg?style=flat&color=black)](https://developer.apple.com/resources/)

# NKLocalizerTemplate

## Description

This solution is designed to automate the process of localization, distribution and convenient control of the application's string resources. In addition, this solution allows localization of the entire application in runtime.


## Requirements

**iOS** 10.0

**Swift** 5.0

## Installation

1. Download folder `NKLocalizerTemplate` to your Mac

2. Copy file `NKLocalizer` to your project

3. Add supported languages to enum `NKLocalizer<Type>.LanguageKey` as cases where the rawValue is Apple language identifier

**Important!** Do not remove case `.Base` - just set rawValue!

4. Run `NKLocalizerCodeGen` script

5. Enter path to folder where you want locate

6. Enter name of type which you want localize

7. Move generated files to project

8. Add localized keys to enum `<TYPE_NAME>Localizer.LocalizedKey` as cases in  `<TYPE_NAME>Localizer.swift`

9. Add localized strings to `<TYPE_NAME>.strings` where each key corresponds to case' rawValue of `<TYPE_NAME>Localizer.LocalizedKey` 

## Version history

### v.1.0.0

## Example

Download repo, run Example project.

## Author

nkopilovskii, nkopilovskii@gmail.com

## License

NKLocalizerTemplate is available under the MIT license. See the LICENSE file for more info.
