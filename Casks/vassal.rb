cask 'vassal' do
  version '3.2.16'
  sha256 '13a6a556a4c4d87a8c40556b72b8c703f919da19f3144ddf48d61be947e9bb02'

  # sourceforge.net/vassalengine was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/vassalengine/VASSAL-current/VASSAL-#{version}/VASSAL-#{version}-macosx.dmg"
  appcast 'https://sourceforge.net/projects/vassalengine/rss?path=/VASSAL-current',
          checkpoint: '441baba4b477cdd3a872591cb19e084a7b3c9ac52da2c8efdd948a6dd671b3dd'
  name 'VASSAL'
  homepage 'http://www.vassalengine.org/'

  app 'VASSAL.app'
end
