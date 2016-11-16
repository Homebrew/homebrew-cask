cask 'texturepacker' do
  version '4.3.0'
  sha256 '1af37f0a4896b281550dfab8e67d00778e17023de4ac6c9c6942fb6cd7298cfa'

  url "https://www.codeandweb.com/download/texturepacker/#{version}/TexturePacker-#{version}-uni.dmg"
  appcast 'https://www.codeandweb.com/releases/TexturePacker/appcast-mac-release.xml',
          checkpoint: '38ac5d550d6b6b39518b95bd20618636e97cd5036557d74b8b915a977a2f523a'
  name 'TexturePacker'
  homepage 'https://www.codeandweb.com/texturepacker'

  app 'TexturePacker.app'
end
