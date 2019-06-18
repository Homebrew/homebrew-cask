cask 'ymc' do
  version '1.0.4'
  sha256 '8984c6f3d7132fc12af49b90ed30e8921243d5329dbbcb563781fccebe742d9e'

  url 'https://github.com/Ty3uK/YMC/releases/download/104-110/ymc_mac_104.zip'
  appcast 'https://github.com/Ty3uK/YMC/releases.atom'
  name 'Yandex.Music Control'
  homepage 'https://ty3uk.github.io/YMC/'

  app 'YMC.app'
end
