cask 'teleport' do
  version :latest
  sha256 :no_check

  url 'http://www.abyssoft.com/software/teleport/downloads/teleport.zip'
  appcast 'http://www.abyssoft.com/software/teleport/versions.xml',
          :checkpoint => '17a5b5e859f5da4d794933ccfcf558c68bc385f6c3251ccc0666be627aa7e216'
  name 'teleport'
  homepage 'http://www.abyssoft.com/software/teleport/'
  license :gratis

  app 'teleport/teleport.app'
end
