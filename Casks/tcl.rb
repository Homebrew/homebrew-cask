cask 'tcl' do
  version '8.6.4.1.299124'
  sha256 '6dff63e0250a059f64cd1b7b2ceb4bb1dff58571345c8ebdfbae1ebfef39d760'

  # activestate.com is the official download host per the vendor homepage
  url "https://downloads.activestate.com/ActiveTcl/releases/#{version.sub(%r{\.\d+$}, '')}/ActiveTcl#{version}-macosx10.5-i386-x86_64-threaded.dmg"
  name 'ActiveTcl'
  homepage 'https://tcl.tk/'
  license :oss

  depends_on macos: '>= :leopard'

  pkg "ActiveTcl-#{version.sub(%r{^(\d+)\.(\d+).*}, '\1.\2')}.pkg"

  uninstall pkgutil: "com.activestate.pkg.ActiveTcl#{version.sub(%r{^(\d+)\.(\d+).*}, '\1\2')}"
end
