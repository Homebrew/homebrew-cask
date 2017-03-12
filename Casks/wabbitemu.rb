cask 'wabbitemu' do
  version '187234'
  sha256 '23fc164767da10389eec858d022967fb58fdca1debaa5b9e022f2e9280a4f4e8'

  url "https://wabbit.codeplex.com/downloads/get/#{version}#"
  name 'Wabbitemu TI Calculator Emulator'
  homepage 'https://wabbit.codeplex.com'

  app 'WabbitEmu.app'
end
