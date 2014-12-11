cask :v1 => 'texmaker' do
  version :latest
  sha256 :no_check

  url 'http://www.xm1math.net/texmaker/TexmakerMacosxLion.zip'
  homepage 'http://www.xm1math.net/texmaker'
  license :unknown    # todo: improve this machine-generated value

  app 'TexmakerMacosxLion/texmaker.app'
end
