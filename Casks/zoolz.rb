cask 'zoolz' do
  version :latest
  sha256 :no_check

  url 'http://downloads.zoolz.com/zoolz2/Zoolz.pkg'
  name 'Zoolz'
  homepage 'https://home.zoolz.com/'

  pkg 'Zoolz.pkg'

  uninstall quit:       'Zoolz',
            login_item: 'Zoolz',
            pkgutil:    'ZoolzInstaller',
            delete:     '/Applications/ZoolzRestore.app'

  zap delete: '~/.config/Genie9/Zoolz'
end
