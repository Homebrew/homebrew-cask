cask 'workcraft' do
  version '3.2.0'
  sha256 '36b20f6b6fa188a3de112cbd60d9fdcc0cbedb3d8932fac4a532afe1ed6d31c2'

  url "https://www.workcraft.org/_media/download/workcraft-v#{version}-osx.tar.gz"
  name 'Workcraft'
  homepage 'https://www.workcraft.org/'

  app 'Workcraft.app'
end
