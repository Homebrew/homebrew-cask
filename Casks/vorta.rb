cask 'vorta' do
  version '0.6.7'
  sha256 '03f8c9bce61ff7992c52aefd0ad6f5477965b32ed0b2f3ca049ba5b8dea0b04a'

  url "https://github.com/borgbase/vorta/releases/download/v#{version}/vorta-#{version}.dmg"
  appcast 'https://github.com/borgbase/vorta/releases.atom'
  name 'Vorta'
  homepage 'https://github.com/borgbase/vorta'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'Vorta.app'

  zap trash: '~/Library/Application Support/Vorta'
end
