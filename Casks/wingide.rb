cask 'wingide' do
  version '6.1.5-1'
  sha256 '755d9a50e4ac2f70c7cc8ba763adfa510805a9cd51876781a0e72587129df3fb'

  url "https://wingware.com/pub/wingide/#{version.sub(%r{-\d+}, '')}/wingide-#{version}.dmg"
  appcast 'https://www.wingware.com/downloads/wing-pro'
  name 'WingIDE'
  homepage 'https://www.wingware.com/'

  app 'WingIDE.app'
end
