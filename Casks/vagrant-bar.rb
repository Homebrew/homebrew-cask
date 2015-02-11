cask :v1 => 'vagrant-bar' do
  version '1.15'
  sha256 'dc4f77ad00e2751e7375eab0172323d9bd9110ced170dc4033036b530ed7fdeb'

  url "https://github.com/BipSync/VagrantBar/releases/download/#{version}/Vagrant.Bar.zip"
  homepage 'https://github.com/BipSync/VagrantBar'
  license :oss

  app 'Vagrant Bar.app'
end
