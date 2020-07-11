cask 'tortoisehg' do
  version '5.4.2'
  sha256 '41673c21811ae84c1f1d64f87d53d5b7062aea8dd8364a5d46d746917dc29722'

  # mercurial-scm.org/release/tortoisehg/ was verified as official when first introduced to the cask
  url "https://www.mercurial-scm.org/release/tortoisehg/macos/TortoiseHg-#{version}-mac-x64-qt5.dmg"
  appcast 'https://www.mercurial-scm.org/release/tortoisehg/macos/'
  name 'TortoiseHg'
  homepage 'https://tortoisehg.bitbucket.io/'

  app 'TortoiseHg.app'
end
