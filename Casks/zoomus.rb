class Zoomus < Cask
  version 'latest'
  sha256 :no_check

  url 'https://zoom.us/client/latest/zoomusInstaller.pkg'
  homepage 'http://www.zoom.us'

  pkg 'zoomusInstaller.pkg'
  uninstall :files => [
    '/Applications/zoom.us.app',
    "#{ENV['HOME']}/Desktop/Zoom"
  ]
end
