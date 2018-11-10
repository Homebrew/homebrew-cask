cask 'tropy' do
  version '1.3.1'
  sha256 'c1da860b588af5a6177d25c34b6663d9bbb8d32eba0098f6cf66fc2ef8969d71'

  # github.com/tropy/tropy was verified as official when first introduced to the cask
  url "https://github.com/tropy/tropy/releases/download/#{version}/tropy-#{version}.dmg"
  appcast 'https://github.com/tropy/tropy/releases.atom'
  name 'Tropy'
  homepage 'https://tropy.org/'

  app 'Tropy.app'
end
