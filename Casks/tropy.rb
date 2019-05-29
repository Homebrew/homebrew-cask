cask 'tropy' do
  version '1.4.5'
  sha256 '458e95049a3a51db8084f1cf7c791804a41bdd2e13d9d8c2eb4cd25e1daf3252'

  # github.com/tropy/tropy was verified as official when first introduced to the cask
  url "https://github.com/tropy/tropy/releases/download/#{version}/tropy-#{version}.dmg"
  appcast 'https://github.com/tropy/tropy/releases.atom'
  name 'Tropy'
  homepage 'https://tropy.org/'

  app 'Tropy.app'
end
