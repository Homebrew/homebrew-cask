class WindowSwitch < Cask
  version :latest
  sha256 :no_check

  url 'https://xpra.org/dists/osx/x86/Window-Switch.dmg'
  homepage 'http://xpra.org/'
  license :unknown

  app 'Window-Switch.app'
end
