cask 'webviewscreensaver' do
  version '2.1.1'
  sha256 'ff3931320cb6d0d17b79c2d96ff8c263b64aa3d1794782b6ca39c182c18da163'

  url "https://github.com/agologan/webviewscreensaver/releases/download/v#{version}/WebViewScreenSaver.saver.zip"
  appcast 'https://github.com/agologan/webviewscreensaver/releases.atom'
  name 'WebViewScreenSaver'
  homepage 'https://github.com/agologan/webviewscreensaver'

  screen_saver 'WebViewScreenSaver.saver'
end
