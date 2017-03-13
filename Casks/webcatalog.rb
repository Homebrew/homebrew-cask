cask 'webcatalog' do
  version '3.3.0'
  sha256 '848ddc8eb98206d01907976cb3eedfb8c912f145e48ea23cce31a1dbff44b00a'

  # github.com/webcatalog/desktop/releases/download/ was verified as official when first introduced to the cask
  url "https://github.com/webcatalog/desktop/releases/download/v#{version}/WebCatalog-#{version}.dmg"
  appcast 'https://github.com/webcatalog/desktop/releases.atom',
          checkpoint: '23ba7d52680f8ad3a0a2a2d0dc5a9d9ccebe657f2f30eeb0ef128d1c75b57ab4'
  name 'WebCatalog'
  homepage 'https://getwebcatalog.com/'

  app 'WebCatalog.app'
end
