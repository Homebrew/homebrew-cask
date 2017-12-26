cask 'tweeten' do
  version '4.3.0'
  sha256 'c0824c5bf489f9fe7c17ff0f3f4c5d3ab730ee5c3847ba73f829fcb6bf119a9c'

  # github.com/MehediH/Tweeten was verified as official when first introduced to the cask
  url "https://github.com/MehediH/Tweeten/releases/download/#{version}/tweeten-darwin-x64.zip"
  appcast 'https://github.com/MehediH/Tweeten/releases.atom',
          checkpoint: '6c47aa9e622f3bf8087f38888069b1724f8b9f9f2f2fe9637428be9a8cf7c436'
  name 'Tweeten'
  homepage 'http://tweetenapp.com/'

  app 'tweeten-darwin-x64/Tweeten.app'
end
