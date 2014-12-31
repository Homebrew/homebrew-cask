cask :v1 => 'teitoku' do
  version '0.3.2'
  sha256 '87812a8a1167ee69942f35b55e402c86f1079ab0f946c1d3a049a716bd8406e1'

  url "https://github.com/geta6/teitoku/releases/download/#{version}/teitoku-#{version}-osx.zip"
  homepage 'http://makebooth.com/i/1xkN1'
  license :mit

  app 'teitoku-osx/Teitoku.app'
end
