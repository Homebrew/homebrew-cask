cask 'typeface' do
  version '2.4.1'
  sha256 'ce19dd3a317dd953d43c9a39bd2cd55bf87ac4e22548b5c840fb1cecc45f21b2'

  url 'https://dcdn.typefaceapp.com/latest'
  appcast 'https://dcdn.typefaceapp.com/appcast.xml'
  name 'Typeface'
  homepage 'https://typefaceapp.com/'

  app 'Typeface.app'
end
