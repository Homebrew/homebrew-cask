class Zoomus < Cask
  url 'https://zoom.us/client/latest/zoomusInstaller.pkg'
  homepage 'http://www.zoom.us'
  version 'latest'
  no_checksum
  install 'zoomusInstaller.pkg'
  uninstall :files => [
    '/Applications/zoom.us.app',
    "#{ENV['HOME']}/Desktop/Zoom"
  ]
end
