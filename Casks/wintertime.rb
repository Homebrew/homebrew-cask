cask 'wintertime' do
  version '0.0.5'
  sha256 '2c71c3f4b5939f69a8932ff4c9360a47eff96051140c15adaf26c1203ca0902e'

  url "https://github.com/actuallymentor/wintertime-mac-background-freezer/releases/download/#{version}/Wintertime-#{version}.dmg"
  appcast 'https://github.com/actuallymentor/wintertime-mac-background-freezer/releases.atom'
  name 'Wintertime'
  homepage 'https://github.com/actuallymentor/wintertime-mac-background-freezer'

  app 'Wintertime.app'
end
