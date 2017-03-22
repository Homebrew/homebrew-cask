cask 'workcraft' do
  version '3.1.2'
  sha256 '1d540df19e232eba0135c1293e6a74f60fdef26a9495e84baebce47c3c650f73'

  url "http://www.workcraft.org/_media/download/workcraft-v#{version}-osx.tar.gz"
  name 'Workcraft'
  homepage 'http://www.workcraft.org/'

  app 'Workcraft.app'
end
