cask 'virtualbox-menulet' do
  version '1.7'
  sha256 '3560b77e7f2d0b94124f317a7ea835686937b5e67264e27b0ca9b55b01685b06'

  url 'https://github.com/cviebrock/VirtualBox-Menulet/releases/download/1.7/VirtualBox.Menulet.1.7.zip'
  appcast 'https://github.com/cviebrock/VirtualBox-Menulet/releases.atom'
  name 'Virtualbox Menulet'
  homepage 'https://github.com/cviebrock/VirtualBox-Menulet'

  app 'VirtualBox Menulet 1.7/VirtualBox Menulet.app'
end
