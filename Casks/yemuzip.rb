cask 'yemuzip' do
  version '2.5'
  sha256 '9c97ac9a715857dc8679b0e1d7fbddb253b0f56275641be2cd9a47b45bd29727'

  url "http://yellowmug.com/download/YemuZip_#{version}.dmg"
  appcast 'http://www.yellowmug.com/yemuzip/revision',
          checkpoint: '68421ea557a4cb920167e06628852d19606182d83080ca5040b2246ee5ba0b87'
  name 'YemuZip'
  homepage 'http://www.yellowmug.com/yemuzip/'

  app 'YemuZip.app'
end
