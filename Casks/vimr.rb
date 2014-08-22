class Vimr < Cask
  version '0.1.6-18'
  sha256 '176f5fdcb75d1d64eec96938363f7587cdff91b9122958d56d8a64a82f12e2b3'

  url "https://github.com/qvacua/vimr/releases/download/v#{version}/VimR-#{version.gsub(/-.*/, '')}.tar.bz2"
  homepage 'http://vimr.org/'

  link 'VimR.app'
end
