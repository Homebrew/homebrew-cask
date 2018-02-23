cask 'texpad' do
  if MacOS.version <= :mountain_lion
    version '1.6.14'
    sha256 '18fcbe93e77e5b5bc848172546962fcde397a26fd543efcc1054004369192f7e'

    url "https://download.texpadapp.com/apps/osx/updates/Texpad_#{version.dots_to_underscores}.zip"
  else
    version '1.8.0,365,f27f248'
    sha256 'e6657161f8df77bff4e6e2a8561ba99dca15dd400fdb971c8bc7b85594c1cd9f'

    url "https://download.texpadapp.com/apps/osx/updates/Texpad_#{version.before_comma.dots_to_underscores}__#{version.after_comma.before_comma}__#{version.after_comma.after_comma}.dmg"
    appcast 'https://www.texpad.com/static-collected/upgrades/texpadappcast.xml',
            checkpoint: '30c0dcf110015f71d53d2b2dc1ea85fff51177efb1ddbe8830df600aeab3c3e3'
  end

  name 'Texpad'
  homepage 'https://www.texpad.com/osx'

  auto_updates true
  depends_on macos: '>= :lion'

  app 'Texpad.app'

  zap trash: [
               '~/Library/Application Support/Texpad',
               '~/Library/Caches/com.vallettaventures.Texpad',
               '~/Library/Cookies/com.vallettaventures.Texpad.binarycookies',
               '~/Library/Preferences/com.vallettaventures.Texpad.plist',
               '~/Library/Saved Application State/com.vallettaventures.Texpad.savedState',
             ]
end
