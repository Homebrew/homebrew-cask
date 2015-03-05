cask :v1 => 'tcl' do
  version '8.6.2.0.298433'
  sha256 '75caf8a4a449d47deb818ed0293dc1668c01edb0f418ca3a3100045122ee08f5'

  # activestate.com is the official download host per the vendor homepage
  url "http://downloads.activestate.com/ActiveTcl/releases/#{version.sub(%r{\.\d+$},'')}/ActiveTcl#{version}-macosx10.5-i386-x86_64-threaded.dmg"
  homepage 'http://tcl.tk/'
  license :oss

  pkg "ActiveTcl-#{version.sub(%r{^(\d+)\.(\d+).*},'\1.\2')}.pkg"

  uninstall :pkgutil => "com.activestate.pkg.ActiveTcl#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}"
end
