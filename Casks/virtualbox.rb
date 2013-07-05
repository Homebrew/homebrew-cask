class Virtualbox < Cask
  url 'http://download.virtualbox.org/virtualbox/4.2.16/VirtualBox-4.2.16-86992-OSX.dmg'
  homepage 'http://www.virtualbox.org'
  version '4.2.16-86992'
  sha1 '94a2f1ab48d2daa0b0a0640efd79ecdd5556c4d7'
  install 'VirtualBox.pkg'
end
