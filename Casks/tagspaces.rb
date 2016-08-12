cask 'tagspaces' do
  version '2.4.0'
  sha256 '41f89594069acea059e8878399072c38e5485edd94a60f40f3e45e063a246b7e'

  # github.com/tagspaces/tagspaces was verified as official when first introduced to the cask
  url "https://github.com/tagspaces/tagspaces/releases/download/v#{version}/tagspaces-#{version}-osx64.zip"
  appcast 'https://github.com/tagspaces/tagspaces/releases.atom',
          checkpoint: '2ea4e29ed2132a8926c1cfae8de3f1f47724471f8ac21ee3a89c7f4deb5e340b'
  name 'TagSpaces'
  homepage 'https://www.tagspaces.org/'
  license :affero

  app 'TagSpaces.app'
end
