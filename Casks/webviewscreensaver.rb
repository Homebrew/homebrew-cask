cask 'webviewscreensaver' do
  version '2.0'
  sha256 'ce06b90cff589c56974b6a9555aa4466f24914d33425f4d4c0b81dbb9effa724'

  url "https://github.com/liquidx/webviewscreensaver/releases/download/v#{version}/WebViewScreenSaver-#{version}.zip"
  appcast 'https://github.com/liquidx/webviewscreensaver/releases.atom'
  name 'WebViewScreenSaver'
  homepage 'https://github.com/liquidx/webviewscreensaver'

  depends_on macos: '<= :mojave'

  screen_saver 'WebViewScreenSaver.saver'
end
