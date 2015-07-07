cask :v1 => 'texturepacker' do
  version '3.8.0'
  sha256 '3353c8c3d80f1d33e6b98f021464421babd659fc7b331307d75801957212b83f'

  url "https://www.codeandweb.com/download/texturepacker/#{version}/TexturePacker-#{version}-uni.dmg"
  name 'TexturePacker'
  homepage 'https://www.codeandweb.com/texturepacker'
  license :freemium

  app 'TexturePacker.app'
end
