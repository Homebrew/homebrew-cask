cask 'traverse' do
  version '0.10.6'
  sha256 'bd4e252c59b2787a9102022bd7710c712a093196f5ba983cb6050500bb867ddc'

  # github.com/jasonraimondi/traverse was verified as official when first introduced to the cask
  url "https://github.com/jasonraimondi/traverse/releases/download/v#{version}/Traverse-#{version}-mac.zip"
  appcast 'https://github.com/jasonraimondi/traverse/releases.atom'
  name 'Traverse'
  homepage 'https://traverse.site/'

  app 'Traverse.app'
end
