cask 'tweeten' do
  version '5.0.3'
  sha256 '942a5dcd010caae035e511939e98ef2135d458434f5d575fc3e652e179cbec50'

  # github.com/MehediH/Tweeten/ was verified as official when first introduced to the cask
  url "https://github.com/MehediH/Tweeten/releases/download/v#{version}/tweeten-darwin-x64.zip"
  appcast 'https://github.com/MehediH/Tweeten/releases.atom'
  name 'Tweeten'
  homepage 'https://tweetenapp.com/'

  app 'Tweeten.app'
end
