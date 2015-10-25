cask :v1 => 'tg-pro' do
  version '2.8.7'
  sha256 '32b622cec40f4cfe0cd5455dd110696b8284524aadd92c552a769c130bbc88e7'

  url "http://www.tunabellysoftware.com/resources/TGPro_#{version.gsub('.','_')}.zip"
  name 'TG Pro'
  appcast 'http://tunabellysoftware.com/resources/sparkle/tgpro/profileInfo.php',
          :sha256 => 'e276cc14d86471bc7c416faefc7e8bcffe94da4458c87c71c2f14287414df5fa'
  homepage 'http://www.tunabellysoftware.com/tgpro/'
  license :commercial

  app 'TG Pro.app'
end
