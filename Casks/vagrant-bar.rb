cask :v1 => 'vagrant-bar' do
  version '1.18'
  sha256 '94920d2b4b316013c533ab1c734c1009a3090bc6a9f3ee0cec9dd9fe978f1808'

  url "https://github.com/BipSync/VagrantBar/releases/download/#{version}/Vagrant.Bar.zip"
  appcast 'https://github.com/BipSync/VagrantBar/releases.atom'
  name 'Vagrant Bar'
  homepage 'https://github.com/BipSync/VagrantBar'
  license :oss

  app 'Vagrant Bar.app'
end
