cask 'tagspaces' do
  version '2.9.0'
  sha256 '33082fa72bb6334cea6be44c8b7b36f57590e00e04487f556f615f76753fca9b'

  # github.com/tagspaces/tagspaces was verified as official when first introduced to the cask
  url "https://github.com/tagspaces/tagspaces/releases/download/v#{version}/tagspaces-#{version}-osx64.zip"
  appcast 'https://github.com/tagspaces/tagspaces/releases.atom',
          checkpoint: 'a6df7302fd03b659071c81d193f655cea5399e8ee6a41529635a465bb3a64af1'
  name 'TagSpaces'
  homepage 'https://www.tagspaces.org/'

  app 'TagSpaces.app'
end
