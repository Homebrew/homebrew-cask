cask :v1 => 'torbrowser' do
  version '4.0.3'
  sha256 'abe638633449835e6c4f35379635d4c3a8d34337abab4503c3dad28fa6d1327c'

  url "https://www.torproject.org/dist/torbrowser/#{version}/TorBrowser-#{version}-osx32_en-US.dmg"
  gpg "#{url}.asc",
      :key_id => '416f061063fee659'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'TorBrowser.app'
end
