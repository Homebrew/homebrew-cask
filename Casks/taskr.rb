cask 'taskr' do
  version '0.3.1'
  sha256 'cbfe77a5e5c2078b865ed3682faca75c9d40b8ace277d19d4d1340491c4d5fb8'

  # github.com/bukinoshita/taskr was verified as official when first introduced to the cask
  url "https://github.com/bukinoshita/taskr/releases/download/#{version}/taskr-#{version}-mac.zip"
  appcast 'https://github.com/bukinoshita/taskr/releases.atom',
          checkpoint: 'b848fed3d524159b160e2f798c5e0f76ae27283b81a5a2d84464dc5d7a96fca1'
  name 'Taskr'
  homepage 'https://taskr.now.sh/'

  app 'taskr.app'
end
