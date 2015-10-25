cask :v1 => 'yoda' do
  version '1.0.1'
  sha256 '4bed8d0f1e4a1be684fc4faf91bfd828f0f8cb6f7a3e4b60d28f0c4b1a94fdef'

  url "https://github.com/whoisandie/yoda/releases/download/v#{version}/yoda-installer-#{version}.dmg"
  appcast 'https://github.com/whoisandie/yoda/releases.atom'
  name 'Yoda'
  homepage 'https://github.com/whoisandie/yoda'
  license :mit

  app 'Yoda.app'
end
