cask 'turtl' do
  version '0.7.2.5'
  sha256 '266ad5026910431e1dd16c77b558c8503b178409ed486a98423491fc050b7b19'

  # github.com/turtl/desktop was verified as official when first introduced to the cask
  url "https://github.com/turtl/desktop/releases/download/v#{version}/turtl-#{version}-osx.zip"
  appcast 'https://github.com/turtl/desktop/releases.atom'
  name 'turtl'
  homepage 'https://turtlapp.com/'

  app 'Turtl.app'
end
