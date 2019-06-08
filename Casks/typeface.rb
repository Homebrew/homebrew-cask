cask 'typeface' do
  version :latest
  sha256 :no_check

  url 'https://dcdn.typefaceapp.com/latest'
  appcast 'https://dcdn.typefaceapp.com/appcast.xml'
  name 'Typeface'
  homepage 'https://typefaceapp.com/'

  app 'Typeface.app'
end
