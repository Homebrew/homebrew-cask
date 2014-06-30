class Virtualhostx < Cask
  version 'latest'
  sha256 :no_check

  url 'https://clickontyler.com/virtualhostx/download/'
  appcast 'http://shine.clickontyler.com/appcast.php?id=23'
  homepage 'http://clickontyler.com/virtualhostx/'

  link 'VirtualHostX.app'
end
