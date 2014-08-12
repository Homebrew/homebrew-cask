class Textwrangler < Cask
  version '4.5.9'
  sha256 '2f498847bd53b9fce5f932de7bed5990cc9587d78abdf731e01bb2f33a9c0c5a'

  url "http://ash.barebones.com/TextWrangler_#{version}.dmg"
  appcast 'https://versioncheck.barebones.com/TextWrangler.xml'
  homepage 'http://www.barebones.com/products/textwrangler'

  link 'TextWrangler.app'
end
