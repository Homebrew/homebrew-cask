cask 'tcl' do
  version '8.6.9.0,8.6.9.8609.2'
  sha256 'bd462de2a09198b95c94ac727264f36aebee83f0ac9aab7260150c4f5e0f5c3b'

  # downloads.activestate.com/ActiveTcl was verified as official when first introduced to the cask
  url "https://downloads.activestate.com/ActiveTcl/releases/#{version.before_comma}/ActiveTcl-#{version.after_comma}-macosx10.9-x86_64.pkg"
  appcast 'https://downloads.activestate.com/ActiveTcl/releases'
  name 'ActiveTcl'
  homepage 'https://tcl.tk/'

  depends_on macos: '>= :sierra'

  pkg "ActiveTcl-#{version.after_comma}-macosx10.9-x86_64.pkg"

  uninstall pkgutil: "com.activestate.pkg.ActiveTcl#{version.major_minor}"
end
