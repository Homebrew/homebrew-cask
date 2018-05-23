cask 'upwork' do
  version '5_1_0_509_87zq7fllb6sf8y49'
  sha256 '00d740020497ffa39df2bd4ca19047320492c71e332b9972a30207bcb61d30ee'

  url "https://updates-desktopapp.upwork.com/binaries/v#{version}/Upwork.dmg"
  name 'Upwork'
  homepage 'https://www.upwork.com/'

  app 'Upwork.app'
end
