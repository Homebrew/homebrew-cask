cask 'texturepacker' do
  version '4.2.0'
  sha256 'd2c355861be2007774d890752873c18d73859ac9589c4be8388bbb7edc20e1e7'

  url "https://www.codeandweb.com/download/texturepacker/#{version}/TexturePacker-#{version}-uni.dmg"
  appcast 'https://www.codeandweb.com/releases/TexturePacker/appcast-mac-release.xml',
          checkpoint: '4720f4107034b391ef4186046ce7facee733a7da15adbadeeafe10eb438e4ddc'
  name 'TexturePacker'
  homepage 'https://www.codeandweb.com/texturepacker'
  license :freemium

  app 'TexturePacker.app'
end
