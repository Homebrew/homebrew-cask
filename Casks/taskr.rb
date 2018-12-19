cask 'taskr' do
  version '1.0.0'
  sha256 '6471c2337768dd2d58c231225a382536a1a0417d91caef68ebf1758a1ef1d4e9'

  # github.com/bukinoshita/taskr was verified as official when first introduced to the cask
  url "https://github.com/bukinoshita/taskr/releases/download/#{version}/taskr-#{version}-mac.zip"
  appcast 'https://github.com/bukinoshita/taskr/releases.atom'
  name 'Taskr'
  homepage 'https://taskr.now.sh/'

  app 'taskr.app'
end
