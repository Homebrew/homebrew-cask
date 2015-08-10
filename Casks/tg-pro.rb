cask :v1 => 'tg-pro' do
  version '2.8.1'
  sha256 '9cdb4731d20daa4242beff1ecbc44fe9a03b4d768261994c0cee85b42f33c525'

  url "http://www.tunabellysoftware.com/resources/TGPro_#{version.gsub('.','_')}.zip"
  name 'TG Pro'
  appcast 'http://tunabellysoftware.com/resources/sparkle/tgpro/profileInfo.php',
          :sha256 => '6377de7a9e67766d24c12c4580337b509d9572552e3def8a8f33af09272942e2'
  homepage 'http://www.tunabellysoftware.com/tgpro/'
  license :commercial

  app 'TG Pro.app'
end
