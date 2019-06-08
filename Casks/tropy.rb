cask 'tropy' do
  version '1.5.0'
  sha256 '7864380ad06a7b7c0d4606beb6a76b3b3b8636c3fb211ab565c788c5935c5a76'

  # github.com/tropy/tropy was verified as official when first introduced to the cask
  url "https://github.com/tropy/tropy/releases/download/#{version}/tropy-#{version}.dmg"
  appcast 'https://github.com/tropy/tropy/releases.atom'
  name 'Tropy'
  homepage 'https://tropy.org/'

  app 'Tropy.app'
end
