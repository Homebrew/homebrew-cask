class Textwrangler < Cask
  version '4.5.10'
  sha256 '52eb092165f86a7a6faddd9b97c75f9781ef13462fcdf9a16d919960db8613a8'

  url "http://ash.barebones.com/TextWrangler_#{version}.dmg"
  appcast 'https://versioncheck.barebones.com/TextWrangler.xml'
  homepage 'http://www.barebones.com/products/textwrangler'

  app 'TextWrangler.app'
end
