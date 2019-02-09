cask 'traverse' do
  version '0.10.10'
  sha256 'b79df81c3ad26c0c21d53ca0ac3d4da68f88ac15ca39eea8290d3323c96bc15b'

  # github.com/jasonraimondi/traverse was verified as official when first introduced to the cask
  url "https://github.com/jasonraimondi/traverse/releases/download/v#{version}/Traverse-#{version}-mac.zip"
  appcast 'https://github.com/jasonraimondi/traverse/releases.atom'
  name 'Traverse'
  homepage 'https://traverse.site/'

  app 'Traverse.app'
end
