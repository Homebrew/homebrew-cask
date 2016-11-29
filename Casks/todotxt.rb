cask 'todotxt' do
  version '2.3.2'
  sha256 '430e61897681b000416e7e08b41b0763f16371c095838cff64f1d103e63f3dac'

  # github.com/mjdescy/TodoTxtMac was verified as official when first introduced to the cask
  url "https://github.com/mjdescy/TodoTxtMac/releases/download/#{version}/TodoTxtMac.app.zip"
  appcast 'https://github.com/mjdescy/TodoTxtMac/releases.atom',
          checkpoint: 'fa99f96e53efa25ac05f5e8fc4747d8d13ae8a00e9339957c8c55d51c2ddca2c'
  name 'TodoTxtMac'
  homepage 'https://mjdescy.github.io/TodoTxtMac/'

  app 'TodoTxtMac.app'
end
