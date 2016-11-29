cask 'workcraft' do
  version '3.1.0'
  sha256 '90a82bd05eec11c118b92078cf1e03f23b5bd148e019c9e0f61a341be04d516f'

  url "http://www.workcraft.org/_media/download/workcraft-v#{version}-osx.tar.gz"
  name 'Workcraft'
  homepage 'http://www.workcraft.org/'

  app 'Workcraft.app'
end
