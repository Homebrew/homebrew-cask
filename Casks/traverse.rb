cask 'traverse' do
  version '0.8.5'
  sha256 '4c40c8af4b85fc74ebbc1f7307f1acb949fa7cde72bea70549457324d8bfde97'

  # traverseapp.nyc3.digitaloceanspaces.com was verified as official when first introduced to the cask
  url "https://traverseapp.nyc3.digitaloceanspaces.com/builds/Traverse-#{version}-mac.zip"
  name 'Traverse'
  homepage 'https://traverse.site/'

  app 'Traverse.app'
end
