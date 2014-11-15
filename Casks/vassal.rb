cask :v1 => 'vassal' do
  version '3.2.13'
  sha256 'f9840fe23a48611307a1e42919fc4dcd6ff79165eeda2da61b834f81ab7bf7f6'

  url "https://downloads.sourceforge.net/project/vassalengine/VASSAL-current/VASSAL-#{version}/VASSAL-#{version}-macosx.dmg"
  homepage 'http://www.vassalengine.org'
  license :oss

  app 'VASSAL.app'
end
