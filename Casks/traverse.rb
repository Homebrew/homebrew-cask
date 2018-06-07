cask 'traverse' do
  version '0.8.7'
  sha256 'ecf47a04e0069220fe57731c2eea9317f1100a74e44747cf0d306fd18f874360'

  # traverseapp.nyc3.digitaloceanspaces.com was verified as official when first introduced to the cask
  url "https://traverseapp.nyc3.digitaloceanspaces.com/builds/Traverse-#{version}-mac.zip"
  appcast 'https://traverse.site/release-notes',
          checkpoint: 'f03dd1f911b95c57d291d74cec55d3a46101eba805c629a29beb1b3d49fe501b'
  name 'Traverse'
  homepage 'https://traverse.site/'

  app 'Traverse.app'
end
