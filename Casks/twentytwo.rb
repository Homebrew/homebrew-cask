cask 'twentytwo' do
  version :latest
  sha256 :no_check

  url 'https://github.com/marcw/twentytwo/raw/master/dist/TwentyTwo.dmg'
  appcast 'https://raw.github.com/marcw/soundcleod/master/appcast.xml',
          :sha256 => '7182774b4cd05d3869b09640d37f1519b3ab1e755e65648574a83090f46c1e28'
  name 'TwentyTwo'
  homepage 'https://github.com/marcw/twentytwo'
  license :mit

  app 'TwentyTwo.app'
end
