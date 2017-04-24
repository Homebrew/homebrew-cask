cask 'volume-mixer' do
  version :latest
  sha256 :no_check

  # dl.devmate.com is the official download host as per the vendor homepage
  url 'https://dl.devmate.com/com.ggt.vm/VolumeMixer.dmg'
  name 'Volume Mixer'
  homepage 'http://www.volumemixer-app.com/'
  license :commercial

  app 'VolumeMixer.app'
end
