cask 'tweeten' do
  version '3.3.2'
  sha256 'bad8f1a85cd4a3001e2807a7a6fc08e211535a3ae0d985feb9c99f4ab9afc03a'

  # github.com/MehediH/TweetenSite was verified as official when first introduced to the cask
  url "https://github.com/MehediH/TweetenSite/releases/download/#{version}/tweeten-darwin-x64.zip"
  appcast 'https://github.com/MehediH/TweetenSite/releases.atom',
          checkpoint: '0970cc7b513f3b957e5d904c6278e75d9fe3e607d2e8c636d888afdb225f2c7a'
  name 'Tweeten'
  homepage 'http://tweeten.xyz/'

  app 'tweeten-darwin-x64/Tweeten.app'
end
