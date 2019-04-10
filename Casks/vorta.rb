cask 'vorta' do
  version '0.6.16'
  sha256 '77acac11b61fcb35dfb6ac7a9e3c76bfd0626805f60d20c2a8c02dc0c395f728'

  url "https://github.com/borgbase/vorta/releases/download/v#{version}/vorta-#{version}.dmg"
  appcast 'https://github.com/borgbase/vorta/releases.atom'
  name 'Vorta'
  homepage 'https://github.com/borgbase/vorta'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'Vorta.app'

  zap trash: '~/Library/Application Support/Vorta'
end
