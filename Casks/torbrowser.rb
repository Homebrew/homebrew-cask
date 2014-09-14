class Torbrowser < Cask
  version '3.6.6'
  sha256 '45843982df1c339f3aa165bf09b96b27306749c38aaf669a13cc9c508b679141'

  url "https://www.torproject.org/dist/torbrowser/#{version}/TorBrowser-#{version}-osx32_en-US.dmg"
  gpg "#{url}.asc",
      :key_id => '416f061063fee659'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :unknown

  app 'TorBrowser.app'
end
