cask :v1 => 'torbrowser' do
  version '4.5.3'
  sha256 '5f4ca1db4d2d2a92fe63fb8fa3558671e8d644ae3af01b491db3aa85c6e63ca7'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_en-US.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
