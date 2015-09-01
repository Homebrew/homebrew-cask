cask :v1 => 'umsatz-mini' do
  version :latest
  sha256 :no_check

  url 'http://umsatz-programm.de/ladungen/UmsatzMini2015.zip'
  name 'Umsatz Mini 2015'
  homepage 'http://umsatz-programm.de'
  license :freemium

  app 'Umsatz Mini 2015.app'
end
