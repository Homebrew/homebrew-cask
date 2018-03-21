cask 'taskr' do
  version '1.0.0'
  sha256 '6471c2337768dd2d58c231225a382536a1a0417d91caef68ebf1758a1ef1d4e9'

  # github.com/bukinoshita/taskr was verified as official when first introduced to the cask
  url "https://github.com/bukinoshita/taskr/releases/download/#{version}/taskr-#{version}-mac.zip"
  appcast 'https://github.com/bukinoshita/taskr/releases.atom',
          checkpoint: 'c92b3c149081305a131890732d15c78a0896e1c352fae683d6e22a2d3acc42dc'
  name 'Taskr'
  homepage 'https://taskr.now.sh/'

  app 'taskr.app'
end
