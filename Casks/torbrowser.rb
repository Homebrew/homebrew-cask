class Torbrowser < Cask
  version '3.6.4'
  sha256 '3f4900230877fc3e8660630e470cd2a4fcf1208787870d74b725347867d525ce'

  url "https://www.torproject.org/dist/torbrowser/#{version}/TorBrowser-#{version}-osx32_en-US.dmg"
  homepage 'https://www.torproject.org/projects/torbrowser.html'

  link 'TorBrowser.app'
end
