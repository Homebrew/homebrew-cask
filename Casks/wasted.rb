class Wasted < Cask
  version 'latest'
  sha256 :no_check
  
  url 'http://wasted.werk01.de/Wasted.zip'
  appcast 'http://wasted.werk01.de/appcast.xml'
  homepage 'http://wasted.werk01.de'

  link 'Wasted.app'
end
