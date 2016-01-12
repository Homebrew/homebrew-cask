cask 'texturepacker' do
  version '4.0.1'
  sha256 '1d49ccf921513112469e406e60adf570eee415f9b19575922372d448f6a2f365'

  url "https://www.codeandweb.com/download/texturepacker/#{version}/TexturePacker-#{version}-uni.dmg"
  appcast 'https://www.codeandweb.com/releases/TexturePacker/appcast-mac-release.xml',
          :sha256 => '4971b06b26f5ba7d54b8fbf633ac614f614969b9eb2d549078b37e0193e8740b'
  name 'TexturePacker'
  homepage 'https://www.codeandweb.com/texturepacker'
  license :freemium

  app 'TexturePacker.app'
end
