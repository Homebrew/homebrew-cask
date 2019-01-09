cask 'upwork' do
  version '5_1_0_647_g0nxmj7uab8q069t'
  sha256 '9119a78f4262c8fe4c6b9f50f768759ade8959495d32f81511c46a3289be998a'

  url "https://updates-desktopapp.upwork.com/binaries/v#{version}/Upwork.dmg"
  name 'Upwork'
  homepage 'https://www.upwork.com/'

  app 'Upwork.app'
end
