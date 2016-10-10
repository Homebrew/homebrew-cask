cask 'twentytwo' do
  version '0.2.0'
  sha256 '8d2e60d5b41d9f4d933767e1f1db770f4a586488aaf4f9c4a211eca73702c8cc'

  url 'https://github.com/marcw/twentytwo/raw/master/dist/TwentyTwo.dmg'
  appcast 'https://raw.githubusercontent.com/marcw/soundcleod/master/appcast.xml',
          checkpoint: '06258aea8d327ba47b86884f7c0036b0ed5f08b3cd82e15dc4f4bda7382e560c'
  name 'TwentyTwo'
  homepage 'https://github.com/marcw/twentytwo'

  app 'TwentyTwo.app'
end
