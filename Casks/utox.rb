cask 'utox' do
  version '0.9.7'
  sha256 'cec9cc990ad058159b843e3b6bd5e8e9fa7b33dbfd1b3895fbb1cfde8b9defc3'

  # github.com/GrayHatter/uTox was verified as official when first introduced to the cask
  url "https://github.com/GrayHatter/uTox/releases/download/v#{version}/uTox-#{version}.dmg"
  appcast 'https://github.com/GrayHatter/uTox/releases.atom',
          checkpoint: '9061a5db2d3ceb5c63d33c519a31f612d4d348ec2ec2a8e66983040151c23374'
  name 'uTox'
  homepage 'https://www.tox.chat'
  license :oss

  app 'uTox.app'
end
