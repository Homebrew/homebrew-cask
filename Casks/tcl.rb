cask :v1 => 'tcl' do
  version '8.6.4.0.298892'
  sha256 '2aae9686f40a7216e185877e7bf8421af35f597c20545d565511367587659bb9'

  # activestate.com is the official download host per the vendor homepage
  url "http://downloads.activestate.com/ActiveTcl/releases/#{version.sub(%r{\.\d+$},'')}/ActiveTcl#{version}-macosx10.5-i386-x86_64-threaded.dmg"
  name 'ActiveTcl'
  homepage 'http://tcl.tk/'
  license :oss

  depends_on :macos => '>= :leopard'

  pkg "ActiveTcl-#{version.sub(%r{^(\d+)\.(\d+).*},'\1.\2')}.pkg"

  uninstall :pkgutil => "com.activestate.pkg.ActiveTcl#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}"
end
