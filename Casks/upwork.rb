cask 'upwork' do
  version '4_2_115_0_7n66kq4suk1ud047'
  sha256 '7c63fb5e93518ae0b4d47d01d92b1f4455120472b2a2a3dc17e48809de6c1669'

  url "https://updates-desktopapp.upwork.com/binaries/v#{version}/Upwork.dmg"
  name 'Upwork'
  homepage 'https://www.upwork.com/'

  app 'Upwork.app'
end
