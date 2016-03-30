cask 'yoda' do
  version '1.0.1'
  sha256 '4bed8d0f1e4a1be684fc4faf91bfd828f0f8cb6f7a3e4b60d28f0c4b1a94fdef'

  url "https://github.com/whoisandie/yoda/releases/download/v#{version}/yoda-installer-#{version}.dmg"
  appcast 'https://github.com/whoisandie/yoda/releases.atom',
          checkpoint: 'f58c3b1b0d868e66b1021c19c3705a064e148af09f207a029effe78ff7c516c8'
  name 'Yoda'
  homepage 'https://github.com/whoisandie/yoda'
  license :mit

  app 'Yoda.app'
end
