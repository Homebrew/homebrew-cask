cask 'texturepacker' do
  version '4.2.2'
  sha256 '55f58f840977f612abfbdf19cd873043010f6f3bd5b10c4b585b400124a4505f'

  url "https://www.codeandweb.com/download/texturepacker/#{version}/TexturePacker-#{version}-uni.dmg"
  appcast 'https://www.codeandweb.com/releases/TexturePacker/appcast-mac-release.xml',
          checkpoint: '0fe851a0094ecd20943f818bdd7006e6f92e535e9f8e360a22ac7090f98cbeda'
  name 'TexturePacker'
  homepage 'https://www.codeandweb.com/texturepacker'
  license :freemium

  app 'TexturePacker.app'
end
