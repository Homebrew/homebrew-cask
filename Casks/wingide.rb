cask 'wingide' do
  version '6.0.6-1'
  sha256 '01bfc10c433faea67d7afe0c7b1279347abd0639dda84b91eebbbaecc7192070'

  url "https://wingware.com/pub/wingide/#{version.sub(%r{-\d+}, '')}/wingide-#{version}.dmg"
  name 'WingIDE'
  homepage 'https://www.wingware.com/'

  app 'WingIDE.app'
end
