cask :v1 => 'vuescan' do
  version '9.4.53'

  if Hardware::CPU.is_32_bit?
    sha256 '26488ec2fbd0dbb841fba8f15e587faebc57bf7c9f599871e7e33cc3a985410a'
    url 'http://www.hamrick.com/files/vuex3294.dmg'
  else
    sha256 'bcc97275a7477f655622ccca9b717ac4afaffcfcb73affecc12507644eddb61c'
    url 'http://www.hamrick.com/files/vuex6494.dmg'
  end

  homepage 'http://www.hamrick.com'
  license :unknown

  app 'VueScan.app'
end
