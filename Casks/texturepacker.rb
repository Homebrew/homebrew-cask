cask 'texturepacker' do
  version '4.1.0'
  sha256 '68b550322c7e5d64d0fa64b8a07ae8f2796db5ef68a7447152b6907a4d6baed0'

  url "https://www.codeandweb.com/download/texturepacker/#{version}/TexturePacker-#{version}-uni.dmg"
  appcast 'https://www.codeandweb.com/releases/TexturePacker/appcast-mac-release.xml',
          checkpoint: 'b28b5bc3d4c0cc4193cb04705dbd8f10caa7a8bb1afda06109a6d09b0af4bb36'
  name 'TexturePacker'
  homepage 'https://www.codeandweb.com/texturepacker'
  license :freemium

  app 'TexturePacker.app'
end
