cask 'wingide' do
  version '6.0.4-1'
  sha256 'ddfcb8f59afb1c80a1b24922e436ecad86422ba28cf221ef21a81ea59db754d4'

  url "https://wingware.com/pub/wingide/#{version.sub(%r{-\d+}, '')}/wingide-#{version}.dmg"
  name 'WingIDE'
  homepage 'https://www.wingware.com/'

  app 'WingIDE.app'
end
