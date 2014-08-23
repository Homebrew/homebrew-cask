class Vimr < Cask
  version '0.1.7-19'
  sha256 '7c2a8c9bf2e560b3cc8325ec60590db2f9a4abad988561e75a025de22fbc0b73'

  url "https://github.com/qvacua/vimr/releases/download/v#{version}/VimR-#{version.gsub(/-.*/, '')}.tar.bz2"
  homepage 'http://vimr.org/'

  link 'VimR.app'
end
