cask :v1 => 'time-lapse-assembler' do
  version :latest
  sha256 :no_check

  url 'http://www.dayofthenewdan.com/TimeLapseAssembler.dmg'
  name 'Time Lapse Assembler'
  homepage 'http://www.dayofthenewdan.com/projects/time-lapse-assembler-1/'
  license :gratis

  app 'Time Lapse Assembler.app'
end
