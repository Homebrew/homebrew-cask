cask :v1 => 'teleport' do
  version :latest
  sha256 :no_check

  url 'http://www.abyssoft.com/software/teleport/downloads/teleport.zip'
  name 'teleport'
  appcast 'http://www.abyssoft.com/software/teleport/versions.xml',
          :sha256 => 'c56815ad8028891f56f8ae5643e9e68b6ca59f2c31c49064e32f9822cc111533'
  homepage 'http://www.abyssoft.com/software/teleport/'
  license :gratis

  app 'teleport/teleport.app'
end
