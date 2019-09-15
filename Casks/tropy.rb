cask 'tropy' do
  version '1.5.4'
  sha256 '7655dec6751c99896ba4af8ee067d2ad806b80fe863eccd87aabcbff3e712ca5'

  # github.com/tropy/tropy was verified as official when first introduced to the cask
  url "https://github.com/tropy/tropy/releases/download/#{version}/tropy-#{version}.dmg"
  appcast 'https://github.com/tropy/tropy/releases.atom'
  name 'Tropy'
  homepage 'https://tropy.org/'

  app 'Tropy.app'
end
