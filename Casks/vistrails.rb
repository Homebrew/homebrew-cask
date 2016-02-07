cask 'vistrails' do
  version '2.2.2-358e9a9fc33c'
  sha256 'efee1669d3ba39985079e44a423f6e7b6b17493669c5945a3bbd70ec8659fc22'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/project/vistrails/vistrails/v#{version.sub(%r{-.*}, '')}/vistrails-mac-10.6-intel-#{version}.dmg"
  name 'VisTrails'
  homepage 'http://www.vistrails.org/'
  license :bsd

  depends_on macos: '>= :snow_leopard'

  suite 'VisTrails'
end
