cask :v1 => 'torbrowser' do
  version '5.0'
  sha256 '78334314211837d7bce82b4e418717efa9aa5678286c4e9c51a10ffc1b69e46f'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_en-US.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
