cask :v1 => 'texturepacker' do
  version '3.9.4'
  sha256 '4e646a41090c6d20957b1da58132565e0268e16dc31b0f2970a864379845cde5'

  url "https://www.codeandweb.com/download/texturepacker/#{version}/TexturePacker-#{version}-uni.dmg"
  appcast 'https://www.codeandweb.com/releases/TexturePacker/appcast-mac-release.xml',
          :sha256 => '0ada46935840f87311d965f1b2ae08e63f5f797acedf84b4ee54443b3d4fff03'
  name 'TexturePacker'
  homepage 'https://www.codeandweb.com/texturepacker'
  license :freemium

  app 'TexturePacker.app'
end
