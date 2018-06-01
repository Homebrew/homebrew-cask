cask 'tikzit' do
  version '1.1'
  sha256 '7e00a64fe5c96963ae5b09f1f59698b8b487239c53eed01a3bf012cf024f0686'

  # downloads.sourceforge.net/tikzit was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/tikzit/TikZiT-osx-#{version}.zip"
  appcast 'https://github.com/tikzit/tikzit/releases.atom',
          checkpoint: '7a5402e6ce2389222002a5b3c6c7d1adb1282aafa99fd0f36bcdd74bd10103d8'
  name 'TikZiT'
  homepage 'http://tikzit.github.io/'

  app 'TikZiT.app'
end
