cask 'tcl' do
  version '8.6.6.8606,402457'
  sha256 '83f6cd8e06832546b8a23f4821165619c47ac8ce6878e154ef8d3456039839cb'

  # downloads.activestate.com/ActiveTcl was verified as official when first introduced to the cask
  url "https://downloads.activestate.com/ActiveTcl/releases/#{version.before_comma}/ActiveTcl-#{version.before_comma}-macosx10.9-x86_64-#{version.after_comma}.pkg"
  name 'ActiveTcl'
  homepage 'https://tcl.tk/'

  depends_on macos: '>= :mavericks'

  pkg "ActiveTcl-#{version.before_comma}-macosx10.9-x86_64-#{version.after_comma}.pkg"

  uninstall pkgutil: "com.activestate.pkg.ActiveTcl#{version.major_minor}"
end
