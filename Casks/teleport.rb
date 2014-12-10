cask :v1 => 'teleport' do
  version :latest
  sha256 :no_check

  url 'http://www.abyssoft.com/software/teleport/downloads/teleport.zip'
  homepage 'http://www.abyssoft.com/software/teleport/'
  license :unknown    # todo: improve this machine-generated value

  prefpane 'teleport/teleport.prefPane'
end
