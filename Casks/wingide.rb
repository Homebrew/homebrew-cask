cask 'wingide' do
  version '6.0.5-1'
  sha256 'c5a6c0e95cabc4098bcd74ecdc775d900eba5ab365bf07e024a5e23991d884c5'

  url "https://wingware.com/pub/wingide/#{version.sub(%r{-\d+}, '')}/wingide-#{version}.dmg"
  name 'WingIDE'
  homepage 'https://www.wingware.com/'

  app 'WingIDE.app'
end
