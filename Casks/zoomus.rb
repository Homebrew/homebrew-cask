class Zoomus < Cask
  url 'https://zoom.us/client/latest/zoomusInstaller.pkg'
  homepage 'http://www.zoom.us'
  version 'latest'
  sha256 :no_check
  install 'zoomusInstaller.pkg'
  uninstall :files => [
    '/Applications/zoom.us.app',
    "#{ENV['HOME']}/Desktop/Zoom"
  ]
end
