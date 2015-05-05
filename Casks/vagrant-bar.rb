cask :v1 => 'vagrant-bar' do
  version '1.16'
  sha256 'f5c58690960269be9a7a2597a0aad098b4bd1676c9494f6022e9c7d1e82d81bc'

  url "https://github.com/BipSync/VagrantBar/releases/download/#{version}/Vagrant.Bar.zip"
  appcast 'https://github.com/BipSync/VagrantBar/releases.atom'
  name 'Vagrant Bar'
  homepage 'https://github.com/BipSync/VagrantBar'
  license :oss

  app 'Vagrant Bar.app'
end
