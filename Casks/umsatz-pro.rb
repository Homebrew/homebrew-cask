cask :v1 => 'umsatz-pro' do
  version :latest
  sha256 :no_check

  url 'http://umsatz-programm.de/ladungen/UmsatzPro2015.zip'
  name 'Umsatz Pro 2015'
  homepage 'http://umsatz-programm.de'
  license :freemium

  app 'Umsatz Pro 2015.app'
end
