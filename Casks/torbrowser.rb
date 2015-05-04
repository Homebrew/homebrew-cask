cask :v1 => 'torbrowser' do
  version '4.5'
  sha256 'af4c2f2363f192742df813f9dd5a0bcfab01c3224e8a2b35b9124082cac424b2'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_en-US.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
