cask 'thenewplayerfree' do
  version :latest
  sha256 :no_check

  # github.com was verified as official when first introduced to the cask
  url 'https://github.com/sudormroot/TheNewPlayer_builds/raw/master/releases/macos/latest.tgz'
  
  name 'TheNewPlayerFree'
  
  homepage 'https://sudormroot.github.io/TheNewPlayer_builds/'
  
  app 'TheNewPlayerFree.app'
end
