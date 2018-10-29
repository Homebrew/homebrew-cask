cask 'tcl' do
  version '8.6.8.0'
  sha256 '8788a7c50b6c9d467bdbf7ae473354173feebc75a8b33b175245ccf4171938d1'

  # downloads.activestate.com/ActiveTcl was verified as official when first introduced to the cask
  url "https://downloads.activestate.com/ActiveTcl/releases/#{version}/ActiveTcl-#{version}-macosx10.9-x86_64.pkg"
  name 'ActiveTcl'
  homepage 'https://tcl.tk/'

  depends_on macos: '>= :mavericks'

  pkg "ActiveTcl-#{version}-macosx10.9-x86_64.pkg"

  uninstall pkgutil: "com.activestate.pkg.ActiveTcl#{version.major_minor}"
end
