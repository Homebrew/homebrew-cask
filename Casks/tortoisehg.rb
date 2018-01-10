cask 'tortoisehg' do
  version '4.4.2'
  sha256 'd38633707ff9c4e0c8971ddfba4c85c730b8ba2d3478d72c00baace34cb244b0'

  # bitbucket.org/tortoisehg/files/downloads was verified as official when first introduced to the cask
  url "https://bitbucket.org/tortoisehg/files/downloads/TortoiseHg-#{version}-mac-x64.dmg"
  name 'TortoiseHg'
  homepage 'https://tortoisehg.bitbucket.io/'

  app 'TortoiseHg.app'
end
