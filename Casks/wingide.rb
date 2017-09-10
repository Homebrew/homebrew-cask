cask 'wingide' do
  version '6.0.7-1'
  sha256 '4f577ad8f5083b828f43863119a625ac66c68c3f282e1234e667ed410d0427cb'

  url "https://wingware.com/pub/wingide/#{version.sub(%r{-\d+}, '')}/wingide-#{version}.dmg"
  name 'WingIDE'
  homepage 'https://www.wingware.com/'

  app 'WingIDE.app'
end
