cask 'torbrowser' do
  version '5.0.7'
  sha256 'fe52461ec5e713212fe606aae1da2e38577b339ca8ac35d5ccd37ba35b4e6095'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_en-US.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
