cask 'xpra' do
  version :latest
  sha256 :no_check

  url 'https://www.xpra.org/dists/osx/x86/Xpra.dmg'
  name 'Xpra'
  homepage 'https://www.xpra.org'

  app 'Xpra.app'
end
