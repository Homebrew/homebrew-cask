cask 'turtl' do
  version '0.7.2.3'
  sha256 '092c200a89d88521a7679ae1c7cefdbbfedc3a7263763a51ec7def9a9d3a34ee'

  # github.com/turtl/desktop was verified as official when first introduced to the cask
  url "https://github.com/turtl/desktop/releases/download/v#{version}/turtl-#{version}-osx.zip"
  appcast 'https://github.com/turtl/desktop/releases.atom'
  name 'turtl'
  homepage 'https://turtlapp.com/'

  app 'Turtl.app'
end
