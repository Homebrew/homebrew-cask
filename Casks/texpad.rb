cask 'texpad' do
  version '1.8.5,404,f8f30e5'
  sha256 '676a1b071142c022cdfda57668c811f7747b36ded442548073fe6dda1b9ca934'

  # download.texpadapp.com was verified as official when first introduced to the cask
  url "https://download.texpadapp.com/apps/osx/updates/Texpad_#{version.before_comma.dots_to_underscores}__#{version.after_comma.before_comma}__#{version.after_comma.after_comma}.dmg"
  appcast 'https://www.texpad.com/static-collected/upgrades/texpadappcast.xml'
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
