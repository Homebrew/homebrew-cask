cask 'torbrowser' do
  version '5.0.6'
  sha256 '11476ec321523f7e8eaf1e697e2b4745ea53aaadd4080197ee6d7a335a4323a8'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_en-US.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
