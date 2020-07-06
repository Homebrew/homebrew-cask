cask 'tweeten' do
  version '5.0.5'
  sha256 '1af9ccf4d566ab1c47f58203798839de94c669d72c951eb9fd8443d726387284'

  # github.com/MehediH/Tweeten/ was verified as official when first introduced to the cask
  url "https://github.com/MehediH/Tweeten/releases/download/v#{version}/tweeten-darwin-x64.zip"
  appcast 'https://github.com/MehediH/Tweeten/releases.atom'
  name 'Tweeten'
  homepage 'https://tweetenapp.com/'

  app 'Tweeten.app'
end
