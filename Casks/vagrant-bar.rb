cask :v1 => 'vagrant-bar' do
  version '1.13'
  sha256 '161ad4f4b7acbeaa76352e7a19849dd5275e4b1811caba8b853fa7964812169a'

  url "https://github.com/BipSync/VagrantBar/releases/download/#{version}/Vagrant.Bar.zip"
  homepage 'https://github.com/BipSync/VagrantBar'
  license :oss

  app 'Vagrant Bar.app'
end
