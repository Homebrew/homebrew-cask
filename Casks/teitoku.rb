class Teitoku < Cask
  version '0.3.2'
  sha256 :no_check

  url "https://github.com/geta6/teitoku/releases/download/#{version}/teitoku-#{version}-osx.zip"
  homepage 'http://makebooth.com/i/1xkN1'
  license :mit

  app 'teitoku-osx/Teitoku.app'
end
