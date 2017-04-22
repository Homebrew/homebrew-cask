cask 'tortoisehg' do
  version '4.1.2'
  sha256 'd631dc1ea4406d48f8a44549768b940d12cb668df92ced109a6db82de3c0b4f5'

  # bitbucket.org/tortoisehg/files/downloads was verified as official when first introduced to the cask
  url "https://bitbucket.org/tortoisehg/files/downloads/TortoiseHg-#{version}-mac-x64.dmg"
  name 'TortoiseHg'
  homepage 'https://tortoisehg.bitbucket.io/'

  app 'TortoiseHg.app'
end
