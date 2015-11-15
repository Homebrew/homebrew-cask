cask :v1 => 'texturepacker' do
  version '4.0.1'
  sha256 '1d49ccf921513112469e406e60adf570eee415f9b19575922372d448f6a2f365'

  url "https://www.codeandweb.com/download/texturepacker/#{version}/TexturePacker-#{version}-uni.dmg"
  appcast 'https://www.codeandweb.com/releases/TexturePacker/appcast-mac-release.xml',
          :sha256 => 'c4b65445ed1c68f6c024cb672f1915b156402c213e514595942c0c6096d8cd65'
  name 'TexturePacker'
  homepage 'https://www.codeandweb.com/texturepacker'
  license :freemium

  app 'TexturePacker.app'
end
