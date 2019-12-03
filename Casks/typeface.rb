cask 'typeface' do
  version '2.6.3'
  sha256 'f96ddda8876f0b0f25d8f9d448cd0057806b94ee55d08c81e215d7031a88c544'

  url 'https://dcdn.typefaceapp.com/latest'
  appcast 'https://dcdn.typefaceapp.com/appcast.xml'
  name 'Typeface'
  homepage 'https://typefaceapp.com/'

  app 'Typeface.app'
end
