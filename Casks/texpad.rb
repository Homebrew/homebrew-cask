cask 'texpad' do
  if MacOS.version <= :mountain_lion
    version '1.6.14'
    sha256 '18fcbe93e77e5b5bc848172546962fcde397a26fd543efcc1054004369192f7e'

    url "https://download.texpadapp.com/apps/osx/updates/Texpad_#{version.dots_to_underscores}.zip"
  else
    version '1.7.37,143,fbbdea4'
    sha256 '8d021c898fe5346b71c4872d08e4a156aebc169f1cfbfa9e1082780820265932'

    url "https://download.texpadapp.com/apps/osx/updates/Texpad_#{version.before_comma.dots_to_underscores}__#{version.after_comma.before_comma}__#{version.after_comma.after_comma}.dmg"
    appcast 'https://www.texpadapp.com/static-collected/upgrades/texpadappcast.xml',
            checkpoint: '26e8c3132f4ece77b2e15d1ff58add18f3fa375e973892d156e213a169851aa0'
  end

  name 'Texpad'
  homepage 'https://www.texpad.com/osx'

  auto_updates true
  depends_on macos: '>= :lion'

  app 'Texpad.app'

  zap delete: [
                '~/Library/Application Support/Texpad',
                '~/Library/Caches/com.vallettaventures.Texpad',
                '~/Library/Cookies/com.vallettaventures.Texpad.binarycookies',
                '~/Library/Preferences/com.vallettaventures.Texpad.plist',
                '~/Library/Saved Application State/com.vallettaventures.Texpad.savedState',
              ]
end
