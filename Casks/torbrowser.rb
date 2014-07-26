class Torbrowser < Cask
  version '3.6.3'
  sha256 'c0a4c391a83d55cfd57f7448c1ecad843187a9ee474387d3147ba2b0694771f3'

  url "https://www.torproject.org/dist/torbrowser/#{version}/TorBrowser-#{version}-osx32_en-US.dmg"
  homepage 'https://www.torproject.org/projects/torbrowser.html'

  link 'TorBrowser.app'
end
