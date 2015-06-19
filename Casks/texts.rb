cask :v1 => 'texts' do
  version '0.23.3'
  sha256 '4fd3b577c25686c5c6c2a91f299d1698486211141ec2b51425302aa28da76ad9'

  url "http://www.texts.io/Texts-#{version}.dmg"
  name 'Texts'
  appcast 'http://www.texts.io/appcast-osx.xml',
          :sha256 => '9fc2a87f91f014f4183e195d5b65348ff9b8142f6917dc8f73f613dececc18a8'
  homepage 'http://www.texts.io'
  license :commercial

  app 'Texts.app'
end
