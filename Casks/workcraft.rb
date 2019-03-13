cask 'workcraft' do
  version '3.2.2'
  sha256 '8a0829d768dbf84402645b1cf3b68b4ca5cd27843ad8619cf68e7dd086efe7c3'

  url "https://www.workcraft.org/_media/download/workcraft-v#{version}-osx.tar.gz"
  appcast 'https://github.com/workcraft/workcraft/releases.atom'
  name 'Workcraft'
  homepage 'https://www.workcraft.org/'

  app 'Workcraft.app'
end
