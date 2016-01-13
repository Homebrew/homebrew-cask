cask 'texturepacker' do
  version '4.0.1'
  sha256 '1d49ccf921513112469e406e60adf570eee415f9b19575922372d448f6a2f365'

  url "https://www.codeandweb.com/download/texturepacker/#{version}/TexturePacker-#{version}-uni.dmg"
  appcast 'https://www.codeandweb.com/releases/TexturePacker/appcast-mac-release.xml',
          :checkpoint => 'b35c754db7238c9b381b5419d2b45da89e022533e9a7f1d3b2ac51e95f8e7a57'
  name 'TexturePacker'
  homepage 'https://www.codeandweb.com/texturepacker'
  license :freemium

  app 'TexturePacker.app'
end
