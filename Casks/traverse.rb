cask 'traverse' do
  version '0.10.12'
  sha256 'b2f4f04cb143b945e665959417f20850111fa2c08742384c49468aec2f4b5630'

  # github.com/jasonraimondi/traverse was verified as official when first introduced to the cask
  url "https://github.com/jasonraimondi/traverse/releases/download/v#{version}/Traverse-#{version}-mac.zip"
  appcast 'https://github.com/jasonraimondi/traverse/releases.atom'
  name 'Traverse'
  homepage 'https://traverse.site/'

  app 'Traverse.app'
end
