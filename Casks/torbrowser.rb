cask :v1 => 'torbrowser' do
  version '4.5.1'
  sha256 '9949d02e337ae649c8e0d8df7a6d2022414047a01259fe83d35f558d9bdead6c'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_en-US.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
