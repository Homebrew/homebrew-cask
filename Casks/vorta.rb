cask 'vorta' do
  version '0.6.26'
  sha256 'c38c856f4c97fa3fa29296ad5b7a33406588aa4cde055f68ca1099a38bbb3a44'

  url "https://github.com/borgbase/vorta/releases/download/v#{version}/vorta-#{version}.dmg"
  appcast 'https://github.com/borgbase/vorta/releases.atom'
  name 'Vorta'
  homepage 'https://github.com/borgbase/vorta'

  auto_updates true
  depends_on macos: '>= :mojave'

  app 'Vorta.app'

  zap trash: '~/Library/Application Support/Vorta'
end
