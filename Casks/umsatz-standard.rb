cask 'umsatz-standard' do
  version :latest
  sha256 :no_check

  url 'http://umsatz-programm.de/ladungen/UmsatzStandard2015.zip'
  name 'Umsatz Standard 2015'
  homepage 'http://umsatz-programm.de'
  license :freemium

  app 'Umsatz Standard 2015.app'
end
