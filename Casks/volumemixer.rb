cask 'volumemixer' do
  version :latest
  sha256 :no_check

  # dl.devmate.com/com.ggt.vm was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.ggt.vm/VolumeMixer.dmg'
  name 'Volume Mixer'
  homepage 'http://www.volumemixer-app.com/'

  app 'VolumeMixer.app'
end
