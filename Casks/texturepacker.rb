cask :v1 => 'texturepacker' do
  version '3.9.2'
  sha256 '3ee5cb6987f79fe8fc5ec87610f07f5c5e112c755f6251407b900bc23be498cf'

  url "https://www.codeandweb.com/download/texturepacker/#{version}/TexturePacker-#{version}-uni.dmg"
  appcast 'https://www.codeandweb.com/releases/TexturePacker/appcast-mac-release.xml',
          :sha256 => '3cabd7f4bda84e6b0df570afe4dbb49131a661ed9b856e50123545f4142c0a31'
  name 'TexturePacker'
  homepage 'https://www.codeandweb.com/texturepacker'
  license :freemium

  app 'TexturePacker.app'
end
