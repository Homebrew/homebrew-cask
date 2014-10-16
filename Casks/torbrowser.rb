class Torbrowser < Cask
  version '4.0'
  sha256 '1a6f153eb34ca43218ecd88a1ca8168c9e098a5a2fe10c3539e036f893e55bf2'

  url "https://www.torproject.org/dist/torbrowser/#{version}/TorBrowser-#{version}-osx32_en-US.dmg"
  gpg "#{url}.asc",
      :key_id => '416f061063fee659'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :unknown

  app 'TorBrowser.app'
end
