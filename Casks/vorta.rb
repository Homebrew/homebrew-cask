cask 'vorta' do
  version '0.6.24'
  sha256 'a3bab0ca8c109d2f749dbd3a62f32c93180295a0f05343725d97eade335f0613'

  url "https://github.com/borgbase/vorta/releases/download/v#{version}/vorta-#{version}.dmg"
  appcast 'https://github.com/borgbase/vorta/releases.atom'
  name 'Vorta'
  homepage 'https://github.com/borgbase/vorta'

  auto_updates true
  depends_on macos: '>= :mojave'

  app 'Vorta.app'

  zap trash: '~/Library/Application Support/Vorta'
end
