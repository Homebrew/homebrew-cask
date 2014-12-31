cask :v1 => 'teeworlds' do
  version '0.6.2'
  sha256 '954e8f213f22b0c47c529d6e4d92f5bc1008a6a1ee54229dc62e706ffd1cab64'

  url "https://teeworlds.com/files/teeworlds-#{version}-osx.dmg"
  homepage 'https://www.teeworlds.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Teeworlds.app'
  app 'Teeworlds Server.app'
end
