class Teitoku < Cask
  version :latest
  sha256 :no_check

  url 'https://github.com/geta6/teitoku/releases/download/0.3.2/teitoku-0.3.2-osx.zip'
  homepage 'http://makebooth.com/i/1xkN1'
  license :mit

  app 'teitoku-osx/Teitoku.app'
end
