cask 'traverse' do
  version '0.10.7'
  sha256 '2f34be44f24c593b996e2d0935ab230d1c4a546972f0add30e5d0daa4feb7be2'

  # github.com/jasonraimondi/traverse was verified as official when first introduced to the cask
  url "https://github.com/jasonraimondi/traverse/releases/download/v#{version}/Traverse-#{version}-mac.zip"
  appcast 'https://github.com/jasonraimondi/traverse/releases.atom'
  name 'Traverse'
  homepage 'https://traverse.site/'

  app 'Traverse.app'
end
