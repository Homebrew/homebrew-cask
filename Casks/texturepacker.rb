cask :v1 => 'texturepacker' do
  version '3.9.1'
  sha256 '19bc67df4b4e1529cdc0062d465640bfd01eb2dcb4bb2036c0f320e8d20706dd'

  url "https://www.codeandweb.com/download/texturepacker/#{version}/TexturePacker-#{version}-uni.dmg"
  appcast 'https://www.codeandweb.com/releases/TexturePacker/appcast-mac-release.xml',
          :sha256 => '3a83cea53cb25ff61851f7398ff07390845f2098c722df08e10bf92bcad8b478'
  name 'TexturePacker'
  homepage 'https://www.codeandweb.com/texturepacker'
  license :freemium

  app 'TexturePacker.app'
end
