cask 'wingide' do
  version '6.1.4-1'
  sha256 '7fd388da07bf506579bb038b18487c415ce5e5d181e2770ba11a2f5fedb98cad'

  url "https://wingware.com/pub/wingide/#{version.sub(%r{-\d+}, '')}/wingide-#{version}.dmg"
  name 'WingIDE'
  homepage 'https://www.wingware.com/'

  app 'WingIDE.app'
end
