cask 'vesta' do
  version '3.4.4'
  sha256 '8f05abc5b2ff8a636e9a82fe649490838088805d9a32158b1b282f7ba5cd0bb2'

  url "http://jp-minerals.org/vesta/archives/#{version}/VESTA.dmg"
  name 'VESTA'
  homepage 'http://jp-minerals.org/vesta/en/'

  app 'VESTA/VESTA.app'
end
