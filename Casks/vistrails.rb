cask :v1 => 'vistrails' do
  version '2.1.4-269e4808eca3'
  sha256 '5f6d190cff7af60050357d993ee34b9544fe15672b535769766ab783cbd09f99'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/project/vistrails/vistrails/v#{version.sub(%r{-.*},'')}/vistrails-mac-10.6-intel-#{version}.dmg"
  name 'VisTrails'
  homepage 'http://www.vistrails.org/'
  license :oss

  suite 'VisTrails'
end
