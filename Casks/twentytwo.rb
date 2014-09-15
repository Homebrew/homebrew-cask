class Twentytwo < Cask
  version 'latest'
  sha256 :no_check

  url 'https://github.com/marcw/twentytwo/raw/master/dist/TwentyTwo.dmg'
  appcast 'https://raw.github.com/marcw/soundcleod/master/appcast.xml'
  homepage 'https://github.com/marcw/twentytwo'

  app 'TwentyTwo.app'
end
