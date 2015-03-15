cask :v1 => 'torbrowser' do
  version '4.0.4'
  sha256 'c47bcb38f75f31e780b45472517b8e30632793ca969244fdc54d01dade3ac512'

  url "https://www.torproject.org/dist/torbrowser/#{version}/TorBrowser-#{version}-osx32_en-US.dmg"
  gpg "#{url}.asc",
      :key_id => '416f061063fee659'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'TorBrowser.app'
end
