cask 'workcraft' do
  version '3.1.9'
  sha256 '07602681f9a90eb0271b45620f1be5aa559ea9bb2cc69f49f0e178a28fb1f149'

  url "https://www.workcraft.org/_media/download/workcraft-v#{version}-osx.tar.gz"
  name 'Workcraft'
  homepage 'https://www.workcraft.org/'

  app 'Workcraft.app'
end
