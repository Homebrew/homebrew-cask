cask 'texturepacker' do
  version '4.2.1'
  sha256 'd682e239bf702a1014c8380f45f84352fb9d0c39182145c21a9f9af29113b06e'

  url "https://www.codeandweb.com/download/texturepacker/#{version}/TexturePacker-#{version}-uni.dmg"
  appcast 'https://www.codeandweb.com/releases/TexturePacker/appcast-mac-release.xml',
          checkpoint: '25f3d4e86f79c67c7e75089da2ddc684e30d82b5dceac7d793565e6081f9ad80'
  name 'TexturePacker'
  homepage 'https://www.codeandweb.com/texturepacker'
  license :freemium

  app 'TexturePacker.app'
end
