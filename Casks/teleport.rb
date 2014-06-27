class Teleport < Cask
  version 'latest'
  sha256 :no_check

  url 'http://www.abyssoft.com/software/teleport/downloads/teleport.zip'
  homepage 'http://www.abyssoft.com/software/teleport/'

  prefpane 'teleport/teleport.prefPane'
end
