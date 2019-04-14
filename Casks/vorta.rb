cask 'vorta' do
  version '0.6.17'
  sha256 '9903ef2563ca8b17492d0a40f114424b9c353f5000fa6e3ab44afbba22979b82'

  url "https://github.com/borgbase/vorta/releases/download/v#{version}/vorta-#{version}.dmg"
  appcast 'https://github.com/borgbase/vorta/releases.atom'
  name 'Vorta'
  homepage 'https://github.com/borgbase/vorta'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'Vorta.app'

  zap trash: '~/Library/Application Support/Vorta'
end
