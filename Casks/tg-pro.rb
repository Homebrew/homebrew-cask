cask :v1 => 'tg-pro' do
  version '2.8.4'
  sha256 'e574e92e411b694f19c9a1ac0583361187f428524987d6a220ea82d39d64ac46'

  url "http://www.tunabellysoftware.com/resources/TGPro_#{version.gsub('.','_')}.zip"
  name 'TG Pro'
  appcast 'http://tunabellysoftware.com/resources/sparkle/tgpro/profileInfo.php',
          :sha256 => '6377de7a9e67766d24c12c4580337b509d9572552e3def8a8f33af09272942e2'
  homepage 'http://www.tunabellysoftware.com/tgpro/'
  license :commercial

  app 'TG Pro.app'
end
