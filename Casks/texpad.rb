cask 'texpad' do
  if MacOS.version <= :yosemite
    version '1.7.45,237,1487350'
    sha256 '5973da0e221a9f9168228d628e25b1f788bcdc9ca8cae86cb02089804f3240f5'
  elsif MacOS.version == :el_capitan
    version '1.8.5,404,f8f30e5'
    sha256 '676a1b071142c022cdfda57668c811f7747b36ded442548073fe6dda1b9ca934'
  else
    version '1.8.10,463,4717d3d'
    sha256 '9eedacdd03518108aa0abdde7718fa4e2d38f2c5d878f3053e4464d1d9f79685'
  end

  # download.texpadapp.com was verified as official when first introduced to the cask
  url "https://download.texpadapp.com/apps/osx/updates/Texpad_#{version.before_comma.dots_to_underscores}__#{version.after_comma.before_comma}__#{version.after_comma.after_comma}.dmg"
  appcast 'https://www.texpad.com/static-collected/upgrades/texpadappcast.xml'
  name 'Texpad'
  homepage 'https://www.texpad.com/osx'

  auto_updates true

  app 'Texpad.app'

  zap trash: [
               '~/Library/Application Support/Texpad',
               '~/Library/Caches/com.vallettaventures.Texpad',
               '~/Library/Cookies/com.vallettaventures.Texpad.binarycookies',
               '~/Library/Preferences/com.vallettaventures.Texpad.plist',
               '~/Library/Saved Application State/com.vallettaventures.Texpad.savedState',
             ]
end
