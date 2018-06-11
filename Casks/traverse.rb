cask 'traverse' do
  version '0.9.1'
  sha256 '2c5570ad3879d2784fa776edf8f2e2bf3a7bd0e2514478dbf8b67b488b2e8e4a'

  # traverseapp.nyc3.digitaloceanspaces.com was verified as official when first introduced to the cask
  url "https://traverseapp.nyc3.digitaloceanspaces.com/builds/Traverse-#{version}-mac.zip"
  appcast 'https://traverse.site/release-notes',
          checkpoint: '3c9b2a2516310e225f78b7962c43a4e792dc3ffbf3ddd4e5ee99c46d6664cf04'
  name 'Traverse'
  homepage 'https://traverse.site/'

  app 'Traverse.app'
end
