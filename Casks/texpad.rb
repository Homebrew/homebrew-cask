cask 'texpad' do
  if MacOS.version <= :mountain_lion
    version '1.6.14'
    sha256 '18fcbe93e77e5b5bc848172546962fcde397a26fd543efcc1054004369192f7e'
    # download.texpadapp.com was verified as official when first introduced to the cask
    url "https://download.texpadapp.com/apps/osx/updates/Texpad_#{version.dots_to_underscores}.dmg"
  elsif MacOS.version <= :yosemite
    version '1.7.45,237,1487350'
    sha256 '5973da0e221a9f9168228d628e25b1f788bcdc9ca8cae86cb02089804f3240f5'
    # download.texpadapp.com was verified as official when first introduced to the cask
    url "https://download.texpadapp.com/apps/osx/updates/Texpad_#{version.before_comma.dots_to_underscores}__#{version.after_comma.before_comma}__#{version.after_comma.after_comma}.dmg"
  elsif MacOS.version == :el_capitan
    version '1.8.5,404,f8f30e5'
    sha256 '676a1b071142c022cdfda57668c811f7747b36ded442548073fe6dda1b9ca934'
    # download.texpadapp.com was verified as official when first introduced to the cask
    url "https://download.texpadapp.com/apps/osx/updates/Texpad_#{version.before_comma.dots_to_underscores}__#{version.after_comma.before_comma}__#{version.after_comma.after_comma}.dmg"
  else
    version '1.8.6,420,2e56cc8'
    sha256 'b61d4dc7fbc59e9d35798a5733875c384ac5804a108dad3cbe734728874a7860'
    # download.texpadapp.com was verified as official when first introduced to the cask
    url "https://download.texpadapp.com/apps/osx/updates/Texpad_#{version.before_comma.dots_to_underscores}__#{version.after_comma.before_comma}__#{version.after_comma.after_comma}.dmg"
  end

  appcast 'https://www.texpad.com/static-collected/upgrades/texpadappcast.xml'
  name 'Texpad'
  homepage 'https://www.texpad.com/osx'

  auto_updates true
  depends_on macos: '>= :snow_leopard'

  app 'Texpad.app'

  zap trash: [
               '~/Library/Application Support/Texpad',
               '~/Library/Caches/com.vallettaventures.Texpad',
               '~/Library/Cookies/com.vallettaventures.Texpad.binarycookies',
               '~/Library/Preferences/com.vallettaventures.Texpad.plist',
               '~/Library/Saved Application State/com.vallettaventures.Texpad.savedState',
             ]
end
