cask 'tortoisehg' do
  version '4.2.2'
  sha256 '4fe37018395233f1eaaeea9a1157c983204e3cd3f1b666ac97f45bb62e3fa39a'

  # bitbucket.org/tortoisehg/files/downloads was verified as official when first introduced to the cask
  url "https://bitbucket.org/tortoisehg/files/downloads/TortoiseHg-#{version}-mac-x64.dmg"
  name 'TortoiseHg'
  homepage 'https://tortoisehg.bitbucket.io/'

  app 'TortoiseHg.app'
end
