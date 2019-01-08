cask 'traverse' do
  version '0.10.1'
  sha256 '1758e8f13ea8036e818678f2163aeb45bd995ac52b2276879d6a2ae3c70c6b22'

  # github.com/jasonraimondi/traverse was verified as official when first introduced to the cask
  url "https://github.com/jasonraimondi/traverse/releases/download/v#{version}/Traverse-#{version}-mac.zip"
  appcast 'https://github.com/jasonraimondi/traverse/releases.atom'
  name 'Traverse'
  homepage 'https://traverse.site/'

  app 'Traverse.app'
end
