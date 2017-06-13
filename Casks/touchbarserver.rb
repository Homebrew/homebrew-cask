cask 'touchbarserver' do
  version '1.6'
  sha256 'c3adffbaed14d12feaf5300995f78e63fbbc2a99733f76549f5a4b071ce86a82'

  url "https://github.com/bikkelbroeders/TouchBarDemoApp/releases/download/v#{version}/TouchBarServer.zip"
  appcast 'https://github.com/bikkelbroeders/TouchBarDemoApp/releases.atom',
          checkpoint: 'cdd8a73aac96791b9ec9e56cc6d214006f3a4d2d8c9ed1c8fbb3aa23fa4bf2bd'
  name 'TouchBarServer'
  homepage 'https://github.com/bikkelbroeders/TouchBarDemoApp'

  app 'TouchBarServer.app'
end
