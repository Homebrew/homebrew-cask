cask :v1 => 'torbrowser' do
  version '4.0.5'
  sha256 '8afa20cc70fe9bae8b0f09a96df001fee091ff89eda47bcdbc9a9370d57ea29e'

  url "https://www.torproject.org/dist/torbrowser/#{version}/TorBrowser-#{version}-osx32_en-US.dmg"
  gpg "#{url}.asc",
      :key_id => '4e2c6e8793298290'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
