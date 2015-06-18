cask :v1 => 'torbrowser' do
  version '4.5.2'
  sha256 '8e9fcb070aea807394086daca36aed8d4dc038c62e64a8f89e95a93e341096dc'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_en-US.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
