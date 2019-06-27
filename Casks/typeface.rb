cask 'typeface' do
  version '2.5.0'
  sha256 '6583316df269eaee8431606ed7ff8e454fb610e2053f4b3af131c81cd3f559e0'

  url 'https://dcdn.typefaceapp.com/latest'
  appcast 'https://dcdn.typefaceapp.com/appcast.xml'
  name 'Typeface'
  homepage 'https://typefaceapp.com/'

  app 'Typeface.app'
end
