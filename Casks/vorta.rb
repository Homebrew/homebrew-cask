cask 'vorta' do
  version '0.6.18'
  sha256 '49c6383370f8a7fdae6723483979c7a40809a3dea2969e0ddbeb17eda8dd6360'

  url "https://github.com/borgbase/vorta/releases/download/v#{version}/vorta-#{version}.dmg"
  appcast 'https://github.com/borgbase/vorta/releases.atom'
  name 'Vorta'
  homepage 'https://github.com/borgbase/vorta'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'Vorta.app'

  zap trash: '~/Library/Application Support/Vorta'
end
