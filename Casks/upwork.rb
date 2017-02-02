cask 'upwork' do
  version '4_2_95_0_9xgmle488qryoawe'
  sha256 '64f674c63ea281006891570a941c1f3412d42d1696af544a6a4b8cdb1aefee37'

  url "https://updates-desktopapp.upwork.com/binaries/v#{version}/Upwork.dmg"
  name 'Upwork'
  homepage 'https://www.upwork.com/'

  app 'Upwork.app'
end
