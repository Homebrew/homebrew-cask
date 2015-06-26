cask :v1 => 'teensyduino' do
  version '1.24'
  sha256 '1b6a8f1b2aa6629dce145faa9d19a3717eab9c436a92e7af74c73b1ccc234273'
  depends_on :cask => 'arduino'

  url 'http://pjrc.com/teensy/td_124/teensyduino.dmg'
  name 'Teensyduino'
  homepage 'http://pjrc.com/teensy/td_download.html'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  installer :manual => 'teensyduino.app'
end
