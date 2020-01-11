cask 'typeface' do
  version '2.6.4'
  sha256 'f7a8ce7a496f33a04b12f23a937c988fd166511208726d7de4218f6fe0041128'

  url 'https://dcdn.typefaceapp.com/latest'
  appcast 'https://dcdn.typefaceapp.com/appcast.xml'
  name 'Typeface'
  homepage 'https://typefaceapp.com/'

  app 'Typeface.app'
end
