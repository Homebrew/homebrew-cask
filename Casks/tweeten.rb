cask 'tweeten' do
  version '4.7.0'
  sha256 '5e474280cd59193ae7c5419978b3501f386818955f15782dfa9ecda1c8ac987c'

  # github.com/MehediH/Tweeten was verified as official when first introduced to the cask
  url "https://github.com/MehediH/Tweeten/releases/download/v#{version}/tweeten-darwin-x64.zip"
  appcast 'https://github.com/MehediH/Tweeten/releases.atom'
  name 'Tweeten'
  homepage 'https://tweetenapp.com/'

  app 'Tweeten.app'
end
