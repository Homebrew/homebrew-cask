cask 'vassal' do
  version '3.2.16'
  sha256 '13a6a556a4c4d87a8c40556b72b8c703f919da19f3144ddf48d61be947e9bb02'

  # sourceforge.net/project/vassalengine was verified as official when first introduced to the cask
  url "http://downloads.sourceforge.net/project/vassalengine/VASSAL-current/VASSAL-#{version}/VASSAL-#{version}-macosx.dmg"
  name 'VASSAL'
  homepage 'http://www.vassalengine.org/'
  license :gpl

  app 'VASSAL.app'
end
