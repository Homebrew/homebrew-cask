cask 'traverse' do
  version '0.10.11'
  sha256 'f6bb43b8dc55f95c7f513d105d1cb37113d225c227f73ad8aa1b05df147647df'

  # github.com/jasonraimondi/traverse was verified as official when first introduced to the cask
  url "https://github.com/jasonraimondi/traverse/releases/download/v#{version}/Traverse-#{version}-mac.zip"
  appcast 'https://github.com/jasonraimondi/traverse/releases.atom'
  name 'Traverse'
  homepage 'https://traverse.site/'

  app 'Traverse.app'
end
