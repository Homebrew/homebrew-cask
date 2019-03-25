cask 'vorta' do
  version '0.6.14'
  sha256 'd3e220bc2ad7f7df517357ff1ce7617d821dd6a90fd92ca2e1d66f98dcd3313f'

  url "https://github.com/borgbase/vorta/releases/download/v#{version}/vorta-#{version}.dmg"
  appcast 'https://github.com/borgbase/vorta/releases.atom'
  name 'Vorta'
  homepage 'https://github.com/borgbase/vorta'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'Vorta.app'

  zap trash: '~/Library/Application Support/Vorta'
end
