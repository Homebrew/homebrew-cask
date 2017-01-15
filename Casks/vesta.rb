cask 'vesta' do
  version '3.4.0'
  sha256 'adc8e468ad53a79cccfa5aa3c0db113c9b6b656c032aa28fc8d6630b0714d133'

  url "http://jp-minerals.org/vesta/archives/#{version}/VESTA.dmg"
  name 'VESTA'
  homepage 'http://jp-minerals.org/vesta/en/'

  app 'VESTA/VESTA.app'
end
