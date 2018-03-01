cask 'texturepacker' do
  version '4.6.2'
  sha256 'ecdc6c3b420580a971c524c68098d1f9b7e5063d2cefe64f00b9b8b6c581b2dd'

  url "https://www.codeandweb.com/download/texturepacker/#{version}/TexturePacker-#{version}-uni.dmg"
  appcast 'https://www.codeandweb.com/releases/TexturePacker/appcast-mac-release.xml',
          checkpoint: 'cd95697c56439125ac45e645ea6ba45d1411caf42a7dd0a6eecb499c80e7f6cd'
  name 'TexturePacker'
  homepage 'https://www.codeandweb.com/texturepacker'

  app 'TexturePacker.app'
end
