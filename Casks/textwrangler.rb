class Textwrangler < Cask
  version '4.5.10'
  sha256 '52eb092165f86a7a6faddd9b97c75f9781ef13462fcdf9a16d919960db8613a8'

  url "http://ash.barebones.com/TextWrangler_#{version}.dmg"
  appcast 'https://versioncheck.barebones.com/TextWrangler.xml',
          :sha256 => '8a7c9a77fe921fe87d1503b9d0f47596c0a32e029f4fd13fac25c4d8ff8ad31e'
  homepage 'http://www.barebones.com/products/textwrangler'
  license :unknown

  app 'TextWrangler.app'
end
