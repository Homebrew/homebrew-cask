class Torbrowser < Cask
  version '3.6.5'
  sha256 '02b93892b3f18d3afb8fa550d64372af00331535c4f4f29e7dd04003bd54d335'

  url "https://www.torproject.org/dist/torbrowser/#{version}/TorBrowser-#{version}-osx32_en-US.dmg"
  homepage 'https://www.torproject.org/projects/torbrowser.html'

  app 'TorBrowser.app'
end
