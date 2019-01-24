cask 'traverse' do
  version '0.10.4'
  sha256 '86fee743c97bf36e5fd96c799cb33b94cb00e82733397d6518685e14f0bd4eeb'

  # github.com/jasonraimondi/traverse was verified as official when first introduced to the cask
  url "https://github.com/jasonraimondi/traverse/releases/download/v#{version}/Traverse-#{version}-mac.zip"
  appcast 'https://github.com/jasonraimondi/traverse/releases.atom'
  name 'Traverse'
  homepage 'https://traverse.site/'

  app 'Traverse.app'
end
