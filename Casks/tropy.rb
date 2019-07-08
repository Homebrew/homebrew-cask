cask 'tropy' do
  version '1.5.2'
  sha256 '8e2ca3fc3f4e782640bfd76936bd79895683184879a59bb652059a835fdbaf03'

  # github.com/tropy/tropy was verified as official when first introduced to the cask
  url "https://github.com/tropy/tropy/releases/download/#{version}/tropy-#{version}.dmg"
  appcast 'https://github.com/tropy/tropy/releases.atom'
  name 'Tropy'
  homepage 'https://tropy.org/'

  app 'Tropy.app'
end
