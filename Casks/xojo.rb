cask 'xojo' do
  version '2016r11'
  sha256 'c21f7b84eced1473295c65c8611a1d50b7ead8a1051b54482e6083fd2bcfa477'

  # 41160df63757fc043cfd-66287f38a83954e31a54d1dbe33e0650.r4.cf2.rackcdn.com was verified as official when first introduced to the cask
  url "http://41160df63757fc043cfd-66287f38a83954e31a54d1dbe33e0650.r4.cf2.rackcdn.com/Xojo#{version}/Xojo#{version}.dmg"
  name 'Xojo'
  homepage 'http://www.xojo.com/'
  license :closed

  suite 'Xojo 2016 Release 1.1'

  zap delete: ['~/Library/Preferences/com.xojo.xojo.plist',
               '~/Library/Application Support/Xojo',
               '~/Library/Caches/Xojo']
end
