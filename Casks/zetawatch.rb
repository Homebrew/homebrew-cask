cask 'zetawatch' do
  version 'r9'
  sha256 '03e092e89771d4f288542131c8a2e9db45d4a9f89dad0069cb094dd1d4ae9062'

  url 'https://github.com/cbreak-black/ZetaWatch/releases/download/r9/ZetaWatch-r9-0-gdeca9e.zip'
  appcast 'https://github.com/cbreak-black/ZetaWatch/releases.atom'
  name 'ZetaWatch'
  homepage 'https://github.com/cbreak-black/ZetaWatch'

  app 'ZetaWatch.app'

  zap launchctl: 'net.the-color-black.ZetaAuthorizationHelper',
      trash:     '/Library/PrivilegedHelperTools/net.the-color-black.ZetaAuthorizationHelper'
end
