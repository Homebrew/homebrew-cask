cask 'vorta' do
  version '0.6.22'
  sha256 '01efe445377d43db5f77bbd78bbd4964734f863afeda678404b4502cbcecb2e2'

  url "https://github.com/borgbase/vorta/releases/download/v#{version}/vorta-#{version}.dmg"
  appcast 'https://github.com/borgbase/vorta/releases.atom'
  name 'Vorta'
  homepage 'https://github.com/borgbase/vorta'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'Vorta.app'

  zap trash: '~/Library/Application Support/Vorta'
end
