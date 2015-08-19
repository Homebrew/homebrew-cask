cask :v1 => 'vagrant-bar' do
  version '1.19'
  sha256 '8984a54eb90e7c8559a23f80e94480fed364ac1fee60cc6dc6502cfeedf34db8'

  url "https://github.com/BipSync/VagrantBar/releases/download/#{version}/Vagrant.Bar.zip"
  appcast 'https://github.com/BipSync/VagrantBar/releases.atom'
  name 'Vagrant Bar'
  homepage 'https://github.com/BipSync/VagrantBar'
  license :oss

  app 'Vagrant Bar.app'
end
