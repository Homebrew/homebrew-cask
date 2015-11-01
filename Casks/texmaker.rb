cask :v1 => 'texmaker' do
  version :latest
  sha256 :no_check

  url 'http://www.xm1math.net/texmaker/TexmakerMacosxLion.zip'
  name 'Texmaker'
  homepage 'http://www.xm1math.net/texmaker'
  license :gratis

  app 'TexmakerMacosxLion/texmaker.app'
end
