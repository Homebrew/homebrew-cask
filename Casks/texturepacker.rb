cask :v1 => 'texturepacker' do
  version '3.7.1'
  sha256 '2a87c76e85f2d8fe48837e531ad92512faa8e1ce4ae7d03a7a99b2d98fc6db9d'

  url "https://www.codeandweb.com/download/texturepacker/#{version}/TexturePacker-#{version}-uni.dmg"
  name 'TexturePacker'
  homepage 'http://www.codeandweb.com/texturepacker'
  license :freemium

  app 'TexturePacker.app'
end
