cask 'texpad' do
  if MacOS.version <= :mountain_lion
    version '1.6.14'
    sha256 '18fcbe93e77e5b5bc848172546962fcde397a26fd543efcc1054004369192f7e'

    url "https://download.texpadapp.com/apps/osx/updates/Texpad_#{version.dots_to_underscores}.zip"
  else
    version '1.7.41,172,423dc8c'
    sha256 'b5894d99a131c3ed0630c5397f516b22d34f2ed89d45e88c858d38afda99ed16'

    url "https://download.texpadapp.com/apps/osx/updates/Texpad_#{version.before_comma.dots_to_underscores}__#{version.after_comma.before_comma}__#{version.after_comma.after_comma}.dmg"
    appcast 'https://www.texpadapp.com/static-collected/upgrades/texpadappcast.xml',
            checkpoint: 'bb20f1d972495ce913b85fbe7d1f91b7b8b481c447a98c1b58111e5643f81afd'
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
