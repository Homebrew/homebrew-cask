cask :v1 => 'twentytwo' do
  version :latest
  sha256 :no_check

  url 'https://github.com/marcw/twentytwo/raw/master/dist/TwentyTwo.dmg'
  appcast 'https://raw.github.com/marcw/soundcleod/master/appcast.xml'
  homepage 'https://github.com/marcw/twentytwo'
  license :mit

  app 'TwentyTwo.app'
end
