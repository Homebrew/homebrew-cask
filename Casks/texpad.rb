cask 'texpad' do
  if MacOS.version <= :yosemite
    version '1.7.45,237,1487350'
    sha256 '5973da0e221a9f9168228d628e25b1f788bcdc9ca8cae86cb02089804f3240f5'
  elsif MacOS.version == :el_capitan
    version '1.8.5,404,f8f30e5'
    sha256 '676a1b071142c022cdfda57668c811f7747b36ded442548073fe6dda1b9ca934'
  else
    version '1.8.8,457,c1d36f4'
    sha256 '6c2e7fe11340ba5a7fe26ce6bcb18235dd3a087ece65873b56627ac43da0a1a6'
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
