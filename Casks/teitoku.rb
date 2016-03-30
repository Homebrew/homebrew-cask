cask 'teitoku' do
  version '0.3.2'
  sha256 '87812a8a1167ee69942f35b55e402c86f1079ab0f946c1d3a049a716bd8406e1'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/geta6/teitoku/releases/download/#{version}/teitoku-#{version}-osx.zip"
  appcast 'https://github.com/geta6/teitoku/releases.atom',
          checkpoint: '84392c67a7a06a97fd1c37593bebaf1470da8475e37c0b44476ed7b746f92cfa'
  name 'Teitoku'
  homepage 'http://makebooth.com/i/1xkN1'
  license :mit

  app 'teitoku-osx/Teitoku.app'
end
