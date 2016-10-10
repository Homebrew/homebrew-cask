cask 'xscope' do
  version '4.2'
  sha256 'f976a94801caaccd445fa9a5afe6f794e4caa95cd39c5e1bf790931b1710adf8'

  url "https://iconfactory.com/assets/software/xscope/xScope-#{version}.zip"
  appcast 'https://iconfactory.com/appcasts/xScope/appcast.xml',
          checkpoint: '6eec33a8cd45abf63e706e6292d25c0ae4cbbf273cafece2ffe3b73992c74cb0'
  name 'xScope'
  homepage 'https://iconfactory.com/software/xscope'

  app 'xScope.app'
end
