cask :v1 => 'tg-pro' do
  version '2.7.3'
  sha256 '085ef1270ae2393e1460bb19d3bf3d5430507007a16de9f83bf50bfee5e5dc14'

  url "http://www.tunabellysoftware.com/resources/TGPro_#{version.gsub('.','_')}.zip"
  name 'TG Pro'
  appcast 'http://tunabellysoftware.com/resources/sparkle/tgpro/profileInfo.php',
          :sha256 => '32bc0377d02e0b6d1657ea606b18f7d9fb852084060a0f41a5ffa78a88334d7f'
  homepage 'http://www.tunabellysoftware.com/tgpro/'
  license :commercial

  app 'TG Pro.app'
end
