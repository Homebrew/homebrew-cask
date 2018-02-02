cask 'workcraft' do
  version '3.1.8'
  sha256 'd3d23dcd66f6f2118b67a2a570dcd154eef2756613e0bf47f29aa84f990f8dd8'

  url "https://www.workcraft.org/_media/download/workcraft-v#{version}-osx.tar.gz"
  name 'Workcraft'
  homepage 'https://www.workcraft.org/'

  app 'Workcraft.app'
end
