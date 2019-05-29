cask 'vorta' do
  version '0.6.20'
  sha256 '48e5e8ef136c2ce08adf86ae42c3d84e55aa4d95ba68e227b50840d52b3be2dd'

  url "https://github.com/borgbase/vorta/releases/download/v#{version}/vorta-#{version}.dmg"
  appcast 'https://github.com/borgbase/vorta/releases.atom'
  name 'Vorta'
  homepage 'https://github.com/borgbase/vorta'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'Vorta.app'

  zap trash: '~/Library/Application Support/Vorta'
end
