cask :v1 => 'tg-pro' do
  version '2.8.3'
  sha256 'c7aa687b4ae43b2bf7adf83b444c0e3716f0ae09cdc2f28b5a6cd79d151002c3'

  url "http://www.tunabellysoftware.com/resources/TGPro_#{version.gsub('.','_')}.zip"
  name 'TG Pro'
  appcast 'http://tunabellysoftware.com/resources/sparkle/tgpro/profileInfo.php',
          :sha256 => '6377de7a9e67766d24c12c4580337b509d9572552e3def8a8f33af09272942e2'
  homepage 'http://www.tunabellysoftware.com/tgpro/'
  license :commercial

  app 'TG Pro.app'
end
