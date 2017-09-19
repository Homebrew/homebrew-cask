cask 'veusz' do
  version '2.0'
  sha256 '48d4fdc44b24fbc1062ab9d9c68f1d93f725faaa0d7be36d83aaac6c2ae42905'

  # github.com/veusz/veusz was verified as official when first introduced to the cask
  url "https://github.com/veusz/veusz/releases/download/veusz-#{version}/veusz-#{version}-AppleOSX.dmg"
  appcast 'https://github.com/veusz/veusz/releases.atom',
          checkpoint: '3e6b3474dee11e0a122fb826365c17a39203868a58680c17058eca18ad3a5064'
  name 'Veusz'
  homepage 'https://veusz.github.io/'

  app 'Veusz.app'
end
