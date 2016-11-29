cask 'tactor' do
  version '1.1'
  sha256 'd116a46bb9392f15d5e6698591403267057f5769bb99be105e7a7f9425d9f260'

  # dl.dropboxusercontent.com/u/7614970 was verified as official when first introduced to the cask
  url 'https://dl.dropboxusercontent.com/u/7614970/Tactor.zip'
  appcast 'https://onflapp.appspot.com/tactor',
          checkpoint: '7ebe111d2fc01fa1148dbbbdd9c25bcc8295b8f3d7f16438ed3d4f49e6f6c443'
  name 'Tactor'
  homepage 'https://onflapp.wordpress.com/tactor/'

  app 'Tactor.app'
end
