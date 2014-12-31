cask :v1 => 'window-switch' do
  version :latest
  sha256 :no_check

  url 'https://xpra.org/dists/osx/x86/Window-Switch.dmg'
  homepage 'http://xpra.org/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Window-Switch.app'
end
