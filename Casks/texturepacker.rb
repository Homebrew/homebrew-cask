cask 'texturepacker' do
  version '4.0.2'
  sha256 '72020043266387fcc39cd4c48d38da81c1227427285cc9c47a870422282b31c7'

  url "https://www.codeandweb.com/download/texturepacker/#{version}/TexturePacker-#{version}-uni.dmg"
  appcast 'https://www.codeandweb.com/releases/TexturePacker/appcast-mac-release.xml',
          checkpoint: 'abf805865f76a5417d4dc29b5dafe6f16cf24facda1226e72766c6e01508b46e'
  name 'TexturePacker'
  homepage 'https://www.codeandweb.com/texturepacker'
  license :freemium

  app 'TexturePacker.app'
end
