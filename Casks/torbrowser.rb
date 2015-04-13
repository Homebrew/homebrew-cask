cask :v1 => 'torbrowser' do
  version '4.0.8'
  sha256 '7f7e5358da6e065a4061d5335e0d54c5e8e7b741bbf114e17fe7150ae40f2025'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx32_en-US.dmg"
  gpg "#{url}.asc",
      :key_id => '4e2c6e8793298290'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
