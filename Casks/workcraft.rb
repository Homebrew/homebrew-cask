cask 'workcraft' do
  version '3.1.7'
  sha256 'b87911235218a6f329e4487fc20aa22c7c07d19f37f53a442ed499452dc20fcc'

  url "https://www.workcraft.org/_media/download/workcraft-v#{version}-osx.tar.gz"
  name 'Workcraft'
  homepage 'https://www.workcraft.org/'

  app 'Workcraft.app'
end
