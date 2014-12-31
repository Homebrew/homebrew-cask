cask :v1 => 'vagrant-bar' do
  version '1.14'
  sha256 '6cf9a2bf9fbe41237a7afa2621d9c1e94ad225e59aa3969b8408b9adbd956334'

  url "https://github.com/BipSync/VagrantBar/releases/download/#{version}/Vagrant.Bar.zip"
  homepage 'https://github.com/BipSync/VagrantBar'
  license :oss

  app 'Vagrant Bar.app'
end
