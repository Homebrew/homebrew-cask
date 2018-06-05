cask 'traverse' do
  version '0.8.6'
  sha256 '4c71901ab88d3ff8bbc0009ad608cfd74cc3cb5283282b68f51fce091ff9d70c'

  # traverseapp.nyc3.digitaloceanspaces.com was verified as official when first introduced to the cask
  url "https://traverseapp.nyc3.digitaloceanspaces.com/builds/Traverse-#{version}-mac.zip"
  appcast 'https://traverse.site/release-notes',
          checkpoint: 'cb9768e38ae29dbe3f2726e3cf0083c2f4c3f912d584c50b08bafa0fa1e3bc2a'
  name 'Traverse'
  homepage 'https://traverse.site/'

  app 'Traverse.app'
end
