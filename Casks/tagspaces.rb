cask 'tagspaces' do
  version '2.6.0'
  sha256 '5eb5d99843bed186b9ba711794376c272922675be647671e9e5f18c82edceb31'

  # github.com/tagspaces/tagspaces was verified as official when first introduced to the cask
  url "https://github.com/tagspaces/tagspaces/releases/download/v#{version}/tagspaces-#{version}-osx64.zip"
  appcast 'https://github.com/tagspaces/tagspaces/releases.atom',
          checkpoint: 'f2c08de8bc1a32b1617b46e2c88195bd11c984461d3a03c3412df3bffcf047d5'
  name 'TagSpaces'
  homepage 'https://www.tagspaces.org/'

  app 'TagSpaces.app'
end
