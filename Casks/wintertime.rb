cask 'wintertime' do
  version '0.0.3'
  sha256 '928df473d1d42ae9b236ae9b14dc1b60c1e88ad609cba03374309d69bac6017a'

  url "https://github.com/actuallymentor/wintertime-mac-background-freezer/releases/download/#{version}/Wintertime-#{version}.dmg"
  appcast 'https://github.com/actuallymentor/wintertime-mac-background-freezer/releases.atom'
  name 'Wintertime'
  homepage 'https://github.com/actuallymentor/wintertime-mac-background-freezer'

  app 'Wintertime.app'
end
