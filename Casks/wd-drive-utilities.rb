cask :v1 => 'wd-drive-utilities' do
  version '2.0.0.23'
  sha256 '3a30e886e421988d70c85b78a74516aadfc5a45cd9b3a6db753e73e11abb15e0'

  url "http://download.wdc.com/wdapp/WD_Drive_Utilities_#{version.gsub('.','_')}.zip"
  homepage 'http://www.wdc.com/en/'
  license :unknown

  app 'WD Drive Utilities.app'
end
