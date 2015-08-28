cask :v1 => 'torbrowser' do
  version '5.0.2'
  sha256 'bc76e4d1a0b9deab144b199aba8d98fb508ec8858e5efacf942eb38f9d92a08e'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_en-US.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
