cask 'wingide' do
  version '5.1.9-1'
  sha256 'f8daa6cb6e76b878da78873b90ad55b4a8e45909e82ff6eeb9f7727ad10454a4'

  url "https://wingware.com/pub/wingide/#{version.sub(%r{-\d+}, '')}/wingide-#{version}.dmg"
  name 'WingIDE'
  homepage 'http://www.wingware.com/'

  app 'WingIDE.app'
end
