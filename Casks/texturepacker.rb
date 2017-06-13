cask 'texturepacker' do
  version '4.4.0'
  sha256 '1177a22edee36cd200a52950f7ca06a3bb933a2931f8fad496047e21d42268d6'

  url "https://www.codeandweb.com/download/texturepacker/#{version}/TexturePacker-#{version}-uni.dmg"
  appcast 'https://www.codeandweb.com/releases/TexturePacker/appcast-mac-release.xml',
          checkpoint: '5c51a647cb446128326169b77fb82d9d38c974d046f308fb9c9b556e8f6b4dac'
  name 'TexturePacker'
  homepage 'https://www.codeandweb.com/texturepacker'

  app 'TexturePacker.app'
end
