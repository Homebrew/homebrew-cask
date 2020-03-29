cask 'tencent-meeting' do
  version 'v1.3.7.402'
  sha256 'f56ea483a8d333b5f4542c65fad589cc1af2fc403fd98a742b04e6340ff7ab07'

  # down.qq.com/download was verified as official when first introduced to the cask
  url 'https://down.qq.com/download/TencentMeeting_0300000000_1.3.7.402.publish.dmg'
  name 'Tencent Meeting'
  homepage 'https://meeting.tencent.com/'

  app 'TencentMeeting.app'
end
