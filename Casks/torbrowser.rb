cask :v1 => 'torbrowser' do
  version '5.0.1'
  sha256 'a30650bbacd842229ecdce3007501801b8284ccc7c245b69737abc720e8be78e'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_en-US.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
