cask 'texturepacker' do
  version '4.5.0'
  sha256 '1937c600e7c3877d7ead99d3f5e791fcc0e8b58b83368512bc4821b6decb2be6'

  url "https://www.codeandweb.com/download/texturepacker/#{version}/TexturePacker-#{version}-uni.dmg"
  appcast 'https://www.codeandweb.com/releases/TexturePacker/appcast-mac-release.xml',
          checkpoint: '543e35872bd93b43ed18d7ce0db8dc7cab7ea7a7e2658f560e7d7e0f35e935e3'
  name 'TexturePacker'
  homepage 'https://www.codeandweb.com/texturepacker'

  app 'TexturePacker.app'
end
