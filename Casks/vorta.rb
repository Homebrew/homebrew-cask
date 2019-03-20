cask 'vorta' do
  version '0.6.11'
  sha256 'cc100c538da2bc3269f7d8054374c980ae9cc0bd2ae775f1e5a1bb17d0f47f0c'

  url "https://github.com/borgbase/vorta/releases/download/v#{version}/vorta-#{version}.dmg"
  appcast 'https://github.com/borgbase/vorta/releases.atom'
  name 'Vorta'
  homepage 'https://github.com/borgbase/vorta'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'Vorta.app'

  zap trash: '~/Library/Application Support/Vorta'
end
