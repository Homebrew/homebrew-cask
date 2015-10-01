cask :v1 => 'torbrowser' do
  version '5.0.3'
  sha256 'f6a38fa3a72c9c60a457be6412f79e1efacd7ff5d993c48791550cc285ff164a'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_en-US.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
