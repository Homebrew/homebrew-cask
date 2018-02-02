cask 'taskr' do
  version '0.4.0'
  sha256 '34a5708790b1106196cc337a5c32ab00a998c404f8d4c1a67f73ba05bdb912cf'

  # github.com/bukinoshita/taskr was verified as official when first introduced to the cask
  url "https://github.com/bukinoshita/taskr/releases/download/#{version}/taskr-#{version}-mac.zip"
  appcast 'https://github.com/bukinoshita/taskr/releases.atom',
          checkpoint: '15a90c56346f1b469bda120e9cbd947b5ecab51bcb63fc28a16a553edb3e4eb3'
  name 'Taskr'
  homepage 'https://taskr.now.sh/'

  app 'taskr.app'
end
