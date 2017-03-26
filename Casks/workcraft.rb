cask 'workcraft' do
  version '3.1.3'
  sha256 '4db58ea3a96a9b7a18ed681d1d4efcea2276040436d6a3752ae44c29a3e981b8'

  url "https://www.workcraft.org/lib/exe/fetch.php/download/workcraft-v#{version}-osx.tar.gz"
  name 'Workcraft'
  homepage 'https://www.workcraft.org/'

  app 'Workcraft.app'
end
