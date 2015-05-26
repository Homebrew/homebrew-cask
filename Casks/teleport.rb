cask :v1 => 'teleport' do
  version :latest
  sha256 :no_check

  url 'http://www.abyssoft.com/software/teleport/downloads/teleport.zip'
  name 'teleport'
  homepage 'http://www.abyssoft.com/software/teleport/'
  license :gratis

  app 'teleport/teleport.app'
end
