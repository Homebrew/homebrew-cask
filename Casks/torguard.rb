cask 'torguard' do
  version :latest
  sha256 :no_check

  url 'http://updates.torguard.biz/Software/MacOSX/TorGuard-latest.dmg'
  name 'TorGuard'
  homepage 'https://torguard.net'
  license :unknown

  app 'TorGuard.app'
end
