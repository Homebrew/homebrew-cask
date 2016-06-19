cask 'the-hit-list' do
  version '1.1.24,335'
  sha256 '899a6e782aa51f9a74454f9308269e578720c608b52905101138adfe5c1e69ac'

  url "https://distrib.karelia.com/downloads/TheHitList-#{version.after_comma}.zip"
  appcast 'https://launch.karelia.com/appcast.php?product=9&appname=The+Hit+List',
          checkpoint: '0ba068f543ca01e9e658b6e0bf533a185fcc2df8d832ef56f5115fc92bfa1d6a'
  name 'The Hit List'
  homepage 'https://www.karelia.com/products/the-hit-list/mac.html'
  license :commercial

  app 'The Hit List.app'
end
