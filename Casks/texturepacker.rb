cask 'texturepacker' do
  version '4.0.2'
  sha256 '72020043266387fcc39cd4c48d38da81c1227427285cc9c47a870422282b31c7'

  url "https://www.codeandweb.com/download/texturepacker/#{version}/TexturePacker-#{version}-uni.dmg"
  appcast 'https://www.codeandweb.com/releases/TexturePacker/appcast-mac-release.xml',
          checkpoint: 'e042deaacf9fcb69b42aa3bf3a3763161042ba721860aade8ddd75318a1ddfd8'
  name 'TexturePacker'
  homepage 'https://www.codeandweb.com/texturepacker'
  license :freemium

  app 'TexturePacker.app'
end
