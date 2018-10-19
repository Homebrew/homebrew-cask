cask 'tcl' do
  version '8.6.8.0'
  sha256 '8788a7c50b6c9d467bdbf7ae473354173feebc75a8b33b175245ccf4171938d1'

  # downloads.activestate.com/ActiveTcl was verified as official when first introduced to the cask
  if version.after_comma == ''
    url "https://downloads.activestate.com/ActiveTcl/releases/#{version.before_comma}/ActiveTcl-#{version.before_comma}-macosx10.9-x86_64.pkg"
  else
    url "https://downloads.activestate.com/ActiveTcl/releases/#{version.before_comma}/ActiveTcl-#{version.before_comma}-macosx10.9-x86_64-#{version.after_comma}.pkg"
  end
  name 'ActiveTcl'
  homepage 'https://tcl.tk/'

  depends_on macos: '>= :mavericks'

  if version.after_comma == ''
    pkg "ActiveTcl-#{version.before_comma}-macosx10.9-x86_64.pkg"
  else
    pkg "ActiveTcl-#{version.before_comma}-macosx10.9-x86_64-#{version.after_comma}.pkg"
  end

  uninstall pkgutil: "com.activestate.pkg.ActiveTcl#{version.major_minor}"
end
