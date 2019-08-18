cask 'vapor' do
  version '3.1.0'
  sha256 'f3bfcbc348358826704dc790ec81317f9f270b70bb6d2889eb6ece0be4c94ccb'

  url "https://github.com/NCAR/VAPOR/releases/download/#{version}/Vapor-#{version}-Mac.dmg"
  appcast 'https://github.com/NCAR/VAPOR/releases.atom'
  name 'VAPOR'
  homepage 'https://github.com/NCAR/VAPOR'

  app 'vapor.app'
end
