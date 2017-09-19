cask 'xtrafinder' do
  version '0.27'
  sha256 'dd34c5eeb5b5330ab341ebe9beeb033911239d316f7ced30be0009dd1dd1ec3e'

  url 'https://www.trankynam.com/xtrafinder/downloads/XtraFinder.dmg'
  appcast 'https://www.trankynam.com/xtrafinder/releasenotes.html',
          checkpoint: '5bd372dce9160059740cce967e4d78253205f86c4f6dcf647fad2df4881dc98c'
  name 'XtraFinder'
  homepage 'https://www.trankynam.com/xtrafinder/'

  depends_on macos: '<= :yosemite'

  pkg 'XtraFinderInstaller.pkg'

  uninstall pkgutil: 'com.trankynam.xtrafinder.*'
end
