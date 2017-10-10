cask 'tweeten' do
  version '4.1.0'
  sha256 'e0d923bb58670582871190472fd41e357e50d2a269e7f79c923bec870b00c334'

  # github.com/MehediH/Tweeten was verified as official when first introduced to the cask
  url "https://github.com/MehediH/Tweeten/releases/download/#{version}/tweeten-darwin-x64.zip"
  appcast 'https://github.com/MehediH/Tweeten/releases.atom',
          checkpoint: 'f9ed94d5908641d8b49ed92588f526063fcd1d308170dfe9a51b66563d455017'
  name 'Tweeten'
  homepage 'http://tweetenapp.com/'

  app 'tweeten-darwin-x64/Tweeten.app'
end
