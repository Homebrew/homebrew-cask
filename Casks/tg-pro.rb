cask :v1 => 'tg-pro' do
  version '2.8.5'
  sha256 'ddffad55f0c8998323d270649f22f3e7a63ed45f867ba141a4b6df2b76bca6fc'

  url "http://www.tunabellysoftware.com/resources/TGPro_#{version.gsub('.','_')}.zip"
  name 'TG Pro'
  appcast 'http://tunabellysoftware.com/resources/sparkle/tgpro/profileInfo.php',
          :sha256 => '6377de7a9e67766d24c12c4580337b509d9572552e3def8a8f33af09272942e2'
  homepage 'http://www.tunabellysoftware.com/tgpro/'
  license :commercial

  app 'TG Pro.app'
end
