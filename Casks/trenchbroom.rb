cask 'trenchbroom' do
  version '2019.4'
  sha256 'e149b8b8f4aab9471350610b1dfc04723fd57ff783504ad5b6bcbf6e604bce22'

  # github.com/kduske/TrenchBroom was verified as official when first introduced to the cask
  url "https://github.com/kduske/TrenchBroom/releases/download/v#{version}/TrenchBroom-MacOSX-v#{version}-Release.dmg"
  appcast 'https://github.com/kduske/TrenchBroom/releases.atom'
  name 'TrenchBroom'
  homepage 'http://kristianduske.com/trenchbroom/'

  app 'TrenchBroom.app'
end
