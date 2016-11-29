cask 'tal-chorus-lx' do
  version :latest
  sha256 :no_check

  url 'https://tal-software.com/downloads/plugins/TAL-Chorus-LX-installer.pkg'
  name 'TAL-Chorus-LX'
  homepage 'https://tal-software.com/products/tal-chorus-lx'

  pkg 'TAL-Chorus-LX-installer.pkg'

  uninstall pkgutil: [
                       'ch.corrupt.talchoruslx.*',
                       'ch.corrupt.talunolxInstaller.TAL-Chorus-LX-64.pkg',
                     ]
end
