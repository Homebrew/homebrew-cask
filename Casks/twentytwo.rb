cask 'twentytwo' do
  version '0.2.0'
  sha256 '8d2e60d5b41d9f4d933767e1f1db770f4a586488aaf4f9c4a211eca73702c8cc'

  url 'https://github.com/marcw/twentytwo/raw/master/dist/TwentyTwo.dmg'
  appcast 'https://raw.githubusercontent.com/marcw/soundcleod/master/appcast.xml'
  name 'TwentyTwo'
  homepage 'https://github.com/marcw/twentytwo'

  app 'TwentyTwo.app'
end
