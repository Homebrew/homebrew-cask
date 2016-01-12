cask 'twentytwo' do
  version :latest
  sha256 :no_check

  url 'https://github.com/marcw/twentytwo/raw/master/dist/TwentyTwo.dmg'
  appcast 'https://raw.github.com/marcw/soundcleod/master/appcast.xml',
          :sha256 => 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'
  name 'TwentyTwo'
  homepage 'https://github.com/marcw/twentytwo'
  license :mit

  app 'TwentyTwo.app'
end
