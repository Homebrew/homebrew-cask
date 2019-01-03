cask 'vorta' do
  version '0.6.3'
  sha256 '22b8115cda30848145ec9d56c26d5b426c9fc85bae93f8a69b311d92b9a6b01d'

  url "https://github.com/borgbase/vorta/releases/download/v#{version}/vorta-#{version}.dmg"
  appcast 'https://github.com/borgbase/vorta/releases.atom'
  name 'Vorta'
  homepage 'https://github.com/borgbase/vorta'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'Vorta.app'

  zap trash: '~/Library/Application Support/Vorta'
end
