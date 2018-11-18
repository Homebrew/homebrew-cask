cask 'wingide' do
  version '6.1.2-1'
  sha256 'c5b6d5fa60ee046eb41f73a305763df5f50838b41a8c7d00a8f1ac9bbf8c8f2c'

  url "https://wingware.com/pub/wingide/#{version.sub(%r{-\d+}, '')}/wingide-#{version}.dmg"
  name 'WingIDE'
  homepage 'https://www.wingware.com/'

  app 'WingIDE.app'
end
