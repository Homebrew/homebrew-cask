cask 'teleport' do
  version :latest
  sha256 :no_check

  url 'http://www.abyssoft.com/software/teleport/downloads/teleport.zip'
  appcast 'http://www.abyssoft.com/software/teleport/versions.xml',
          :checkpoint => 'b7b68db7e36eab08273f35394eaa245b60ec48525a23c6f35a4daf7478e707c8'
  name 'teleport'
  homepage 'http://www.abyssoft.com/software/teleport/'
  license :gratis

  app 'teleport/teleport.app'
end
