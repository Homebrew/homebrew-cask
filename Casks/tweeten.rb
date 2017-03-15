cask 'tweeten' do
  version '3.3.4'
  sha256 'a7b57365fa4b94fe85b1a8ac290de38915ae7101fa01361ce56a16316ceee21b'

  # github.com/MehediH/TweetenSite was verified as official when first introduced to the cask
  url "https://github.com/MehediH/TweetenSite/releases/download/#{version}/tweeten-darwin-x64.zip"
  appcast 'https://github.com/MehediH/TweetenSite/releases.atom',
          checkpoint: 'a8b9da6f8223ebe8cb92846b17b9d165a80d870812fdaa6db3c021458c0725e8'
  name 'Tweeten'
  homepage 'http://tweeten.xyz/'

  app 'tweeten-darwin-x64/Tweeten.app'
end
