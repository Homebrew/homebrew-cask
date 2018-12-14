cask 'vorta' do
  version '0.6.1'
  sha256 '105af6e30c6e20b73d12f1861443add58ceca667d1b18e6832d1f1c6b4c3f0a3'

  url "https://github.com/borgbase/vorta/releases/download/v#{version}/vorta-#{version}.dmg"
  appcast 'https://github.com/borgbase/vorta/releases.atom'
  name 'Vorta'
  homepage 'https://github.com/borgbase/vorta'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'Vorta.app'

  zap trash: '~/Library/Application Support/Vorta'
end
