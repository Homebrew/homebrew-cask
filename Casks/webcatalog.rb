cask 'webcatalog' do
  version '3.2.6'
  sha256 'ec91382cae0fa7ac5c0e290d058baa1f8cb7c3d659821fd4710041e33c082e9f'

  # github.com/webcatalog/desktop/releases/download/ was verified as official when first introduced to the cask
  url "https://github.com/webcatalog/desktop/releases/download/v#{version}/WebCatalog-#{version}.dmg"
  appcast 'https://github.com/webcatalog/desktop/releases.atom',
          checkpoint: '21e3e3510cc26712ea04510ad0cd2778b1060feb59484e5000780170e4deba4a'
  name 'WebCatalog'
  homepage 'https://getwebcatalog.com/'

  app 'WebCatalog.app'
end
