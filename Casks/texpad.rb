cask 'texpad' do
  if MacOS.version <= :mountain_lion
    version '1.6.14'
    sha256 '18fcbe93e77e5b5bc848172546962fcde397a26fd543efcc1054004369192f7e'

    url "https://download.texpadapp.com/apps/osx/updates/Texpad_#{version.dots_to_underscores}.zip"
  else
    version '1.7.43,210,723a277'
    sha256 'f26843b05b8e325ac7606745375470ee34d3aa9e5f074cdd854366e0a9dce859'

    url "https://download.texpadapp.com/apps/osx/updates/Texpad_#{version.before_comma.dots_to_underscores}__#{version.after_comma.before_comma}__#{version.after_comma.after_comma}.dmg"
    appcast 'https://www.texpadapp.com/static-collected/upgrades/texpadappcast.xml',
            checkpoint: 'a7e90c042274d6a1c061fa16b956172e4ce2503dba18861eef2e8fa2fb77d013'
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
