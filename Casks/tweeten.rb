cask 'tweeten' do
  version '4.2.2'
  sha256 'c8163de9fee87434ceb1e7abae8a65a2cc449230308417d3275664cabf51fd0a'

  # github.com/MehediH/Tweeten was verified as official when first introduced to the cask
  url "https://github.com/MehediH/Tweeten/releases/download/#{version}/tweeten-darwin-x64.zip"
  appcast 'https://github.com/MehediH/Tweeten/releases.atom',
          checkpoint: 'c51a22cfa106f1de791d188d9db5c950c1ff53fb74026037a4853a75ee8cbf41'
  name 'Tweeten'
  homepage 'http://tweetenapp.com/'

  app 'tweeten-darwin-x64/Tweeten.app'
end
