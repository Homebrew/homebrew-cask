cask 'texpad' do
  version '1.8.4,392,0ea1407'
  sha256 '88c0c140e136099656a21a3534078edf00ba7970c5a6f6c29b8718a4eff1438f'

  # download.texpadapp.com was verified as official when first introduced to the cask
  url "https://download.texpadapp.com/apps/osx/updates/Texpad_#{version.before_comma.dots_to_underscores}__#{version.after_comma.before_comma}__#{version.after_comma.after_comma}.dmg"
  appcast 'https://www.texpad.com/static-collected/upgrades/texpadappcast.xml',
          checkpoint: '70324384fc8fdcd1d93ecb153a5308210768eafdebbf82b09ab24fe5e4e8223e'
  name 'Texpad'
  homepage 'https://www.texpad.com/osx'

  auto_updates true
  depends_on macos: '>= :el_capitan'

  app 'Texpad.app'

  zap trash: [
               '~/Library/Application Support/Texpad',
               '~/Library/Caches/com.vallettaventures.Texpad',
               '~/Library/Cookies/com.vallettaventures.Texpad.binarycookies',
               '~/Library/Preferences/com.vallettaventures.Texpad.plist',
               '~/Library/Saved Application State/com.vallettaventures.Texpad.savedState',
             ]
end
