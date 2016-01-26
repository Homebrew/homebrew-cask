cask 'texturepacker' do
  version '4.0.1'
  sha256 '1d49ccf921513112469e406e60adf570eee415f9b19575922372d448f6a2f365'

  url "https://www.codeandweb.com/download/texturepacker/#{version}/TexturePacker-#{version}-uni.dmg"
  appcast 'https://www.codeandweb.com/releases/TexturePacker/appcast-mac-release.xml',
          checkpoint: 'd648679891bf00f81a6da0c53b6c70dbf0859bf13d27a6b7fc511e898908246f'
  name 'TexturePacker'
  homepage 'https://www.codeandweb.com/texturepacker'
  license :freemium

  app 'TexturePacker.app'
end
