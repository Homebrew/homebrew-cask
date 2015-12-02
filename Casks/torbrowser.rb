cask :v1 => 'torbrowser' do
  version '5.0.4'
  sha256 '168a116c55c56126a27521c28d64b1a13f8ea73d7350dabb8dd29059a8f22734'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_en-US.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
