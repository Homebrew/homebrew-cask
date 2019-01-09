cask 'tropy' do
  version '1.3.2'
  sha256 'f9687c86fdf5954890d97e0384d954b10db06f675da33eba706ef64f61242a8c'

  # github.com/tropy/tropy was verified as official when first introduced to the cask
  url "https://github.com/tropy/tropy/releases/download/#{version}/tropy-#{version}.dmg"
  appcast 'https://github.com/tropy/tropy/releases.atom'
  name 'Tropy'
  homepage 'https://tropy.org/'

  app 'Tropy.app'
end
