cask 'upwork' do
  version '5_1_0_562_f3wgs5ljinabm69t'
  sha256 'cd73202f2d09b9a16b0ca0e8a701db79af127d76744821cbf98c49d1fa03f85f'

  url "https://updates-desktopapp.upwork.com/binaries/v#{version}/Upwork.dmg"
  name 'Upwork'
  homepage 'https://www.upwork.com/'

  app 'Upwork.app'
end
