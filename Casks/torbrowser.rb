cask :v1 => 'torbrowser' do
  version '4.0.6'
  sha256 '283bb75db6266266cb9d891c652feada2d515c8f4e275bc0858c83233474a00a'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx32_en-US.dmg"
  gpg "#{url}.asc",
      :key_id => '4e2c6e8793298290'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
