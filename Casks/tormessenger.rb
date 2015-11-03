cask :v1 => 'tormessenger' do
  version '0.1.0b3'
  sha256 'cbe94d9707badfddf00c0ccd03bb7690a338a21aa070c7ce647e9343f1745f7f'

  url "https://dist.torproject.org/tormessenger/#{version}/TorMessenger-#{version}-osx64_en-US.dmg"
  name 'Tor Messenger'
  homepage '' # there is no homepage yet
  license :oss 

  app 'Tor Messenger.app'
end
