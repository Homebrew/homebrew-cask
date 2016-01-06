cask 'wingide' do
  version '5.1.8-1'
  sha256 'e3f12e467fd0a17160406010cc6d6fd2b7c84e725848cce4694307706a8eb6c8'

  url "https://wingware.com/pub/wingide/#{version.sub(%r{-\d+}, '')}/wingide-#{version}.dmg"
  name 'WingIDE'
  homepage 'http://www.wingware.com/'
  license :commercial

  app 'WingIDE.app'
end
