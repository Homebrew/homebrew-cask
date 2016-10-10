cask 'texturepacker' do
  version '4.2.3'
  sha256 '2f9215247d6cc7aab86a08e4e485db4c7b4bf1a5225fa29845a410d33f9b8955'

  url "https://www.codeandweb.com/download/texturepacker/#{version}/TexturePacker-#{version}-uni.dmg"
  appcast 'https://www.codeandweb.com/releases/TexturePacker/appcast-mac-release.xml',
          checkpoint: '480bb68883fbddb3aadd0ee850fde35094f32e8438361eb8aa02a2c11ed26daa'
  name 'TexturePacker'
  homepage 'https://www.codeandweb.com/texturepacker'

  app 'TexturePacker.app'
end
