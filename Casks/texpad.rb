cask 'texpad' do
  if MacOS.version <= :mountain_lion
    version '1.6.14'
    sha256 '18fcbe93e77e5b5bc848172546962fcde397a26fd543efcc1054004369192f7e'

    url "https://download.texpadapp.com/apps/osx/updates/Texpad_#{version.dots_to_underscores}.zip"
  else
    version '1.7.42,193,622c26c'
    sha256 'a2b095f213b282bb456454a14dfd970c2f98043de4b32758a47dce96b35f3fd3'

    url "https://download.texpadapp.com/apps/osx/updates/Texpad_#{version.before_comma.dots_to_underscores}__#{version.after_comma.before_comma}__#{version.after_comma.after_comma}.dmg"
    appcast 'https://www.texpadapp.com/static-collected/upgrades/texpadappcast.xml',
            checkpoint: '2d146fde5f39654c07e189240547beeeeb9375bce6b1c9345088134d83199177'
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
