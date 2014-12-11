cask :v1 => 'torbrowser' do
  version '4.0.2'
  sha256 'c68f523a587d5b240099ec526c43fe5ea400929a73f6f58fd5fec66bfef00936'

  url "https://www.torproject.org/dist/torbrowser/#{version}/TorBrowser-#{version}-osx32_en-US.dmg"
  gpg "#{url}.asc",
      :key_id => '416f061063fee659'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :unknown    # todo: improve this machine-generated value

  app 'TorBrowser.app'
end
