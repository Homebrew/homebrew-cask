cask :v1 => 'zipeg' do
  version :latest
  sha256 :no_check

  url 'https://www.zipeg.net/downloads/zipeg_mac.dmg'
  name 'Zipeg'
  homepage 'http://www.zipeg.net/'
  license :gratis

  app 'Zipeg.app'
end
