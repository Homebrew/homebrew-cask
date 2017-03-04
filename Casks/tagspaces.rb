cask 'tagspaces' do
  version '2.7.0'
  sha256 'c1214f39732de3531bd4ccf9558ddb40d56b1dad3acef92a02c49cae1bfe4194'

  # github.com/tagspaces/tagspaces was verified as official when first introduced to the cask
  url "https://github.com/tagspaces/tagspaces/releases/download/v#{version}/tagspaces-#{version}-osx64.zip"
  appcast 'https://github.com/tagspaces/tagspaces/releases.atom',
          checkpoint: 'fd5b21e6f3efe7295ab25b09e1eaa3cfc53f28798822839fc2df895df152b9cf'
  name 'TagSpaces'
  homepage 'https://www.tagspaces.org/'

  app 'TagSpaces.app'
end
