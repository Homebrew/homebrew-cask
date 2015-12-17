cask :v1 => 'torbrowser' do
  version '5.0.5'
  sha256 '7559cbe1268435d790495cb544ce0936dd0d13d92a12a3d7adb081374f809444'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_en-US.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
