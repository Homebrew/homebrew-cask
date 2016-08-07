cask 'tal-chorus-lx' do
  version :latest
  sha256 :no_check

  url 'http://kunz.corrupt.ch/downloads/plugins/TAL-Chorus-LX-installer.pkg'
  name 'TAL-Chorus-LX'
  homepage 'http://kunz.corrupt.ch/products/tal-chorus-lx'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg 'TAL-Chorus-LX-installer.pkg'

  uninstall pkgutil: [
                       'ch.corrupt.talchoruslx.*',
                       'ch.corrupt.talunolxInstaller.TAL-Chorus-LX-64.pkg',
                     ]
end
