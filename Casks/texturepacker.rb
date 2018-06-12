cask 'texturepacker' do
  version '4.8.0'
  sha256 'cfdddec6f31e32a0520bef89a412b8c479cf1c807752f3b18d22eeada8011f54'

  url "https://www.codeandweb.com/download/texturepacker/#{version}/TexturePacker-#{version}-uni.dmg"
  appcast 'https://www.codeandweb.com/releases/TexturePacker/appcast-mac-release.xml'
  name 'TexturePacker'
  homepage 'https://www.codeandweb.com/texturepacker'

  app 'TexturePacker.app'
end
