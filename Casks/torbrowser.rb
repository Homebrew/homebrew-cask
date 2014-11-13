cask :v1 => 'torbrowser' do
  version '4.0.1'
  sha256 '2388eaabbe81bdc767ce3fbbbe0247853eb4b0f018b341fc9d5017791f00f02b'

  url "https://www.torproject.org/dist/torbrowser/#{version}/TorBrowser-#{version}-osx32_en-US.dmg"
  gpg "#{url}.asc",
      :key_id => '416f061063fee659'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :unknown

  app 'TorBrowser.app'
end
