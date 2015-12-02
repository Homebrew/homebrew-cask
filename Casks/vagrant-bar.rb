cask :v1 => 'vagrant-bar' do
  version '1.20'
  sha256 'f9e52af82b8560881e73fd82390dfaa33f9d0ef0144aadcdc40778537bb2a29f'

  url "https://github.com/BipSync/VagrantBar/releases/download/#{version}/Vagrant.Bar.zip"
  appcast 'https://github.com/BipSync/VagrantBar/releases.atom'
  name 'Vagrant Bar'
  homepage 'https://github.com/BipSync/VagrantBar'
  license :oss

  app 'Vagrant Bar.app'
end
