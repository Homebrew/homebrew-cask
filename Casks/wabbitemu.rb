cask 'wabbitemu' do
  version '187234'
  sha256 'cbae40f1041d5e7b084931e329f1bd81528b8024c9a5138d874cf7940af28cb2'

  url "https://wabbit.codeplex.com/downloads/get/#{version}"
  name 'Wabbitemu TI Calculator Emulator'
  homepage 'https://wabbit.codeplex.com'

  app 'WabbitEmu.app'
end
