cask :v1 => 'vistrails' do
  version '2.1.1'
  sha256 '38ac9da9af7a557cee6eb703517e38ea1bcc430706a436a182eec6f976275b02'

  url "http://downloads.sourceforge.net/project/vistrails/vistrails/v#{version}/vistrails-mac-10.6-intel-#{version}-90975fc00211.dmg"
  name 'VisTrails'
  homepage 'http://www.vistrails.org/'
  license :oss

  suite 'VisTrails'
end
