cask 'window-switch' do
  version :latest
  sha256 :no_check

  url 'https://xpra.org/dists/osx/x86/Window-Switch.dmg'
  name 'Window Switch'
  homepage 'https://xpra.org/'

  app 'Window-Switch.app'
end
