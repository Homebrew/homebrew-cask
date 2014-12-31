cask :v1 => 'udig' do
  version '1.4.0'
  sha256 '1364245d9e6f62a3ec4f21b5a0eb4046a0423ca778d3d550b348d5bb20706fa2'

  url "http://udig.refractions.net/files/downloads/udig-#{version}.macosx.cocoa.x86_64.dmg"
  homepage 'http://udig.refractions.net/'
  license :oss

  suite 'udig'
end
