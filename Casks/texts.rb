cask 'texts' do
  version '1.3.2'
  sha256 '246cee7f9927c9583f164b04d95f9ce796918192c4aedcc726ea46663a52cdf4'

  url "http://www.texts.io/Texts-#{version}.dmg"
  appcast 'http://www.texts.io/appcast-osx.xml',
          checkpoint: '0fd21f16720bd0c45671e94bab176e26e003d17d32bd32fd9521d66e2b79bcc0'
  name 'Texts'
  homepage 'http://www.texts.io'
  license :commercial

  app 'Texts.app'
end
