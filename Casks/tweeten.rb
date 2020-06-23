cask 'tweeten' do
  version '5.0.4'
  sha256 '42ea5dd62acfd23f077b471443ca756f406a23a833a41e74f8f6332a54a3cafb'

  # github.com/MehediH/Tweeten/ was verified as official when first introduced to the cask
  url "https://github.com/MehediH/Tweeten/releases/download/v#{version}/tweeten-darwin-x64.zip"
  appcast 'https://github.com/MehediH/Tweeten/releases.atom'
  name 'Tweeten'
  homepage 'https://tweetenapp.com/'

  app 'Tweeten.app'
end
