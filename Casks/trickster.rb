cask 'trickster' do
  if MacOS.version <= :lion
    version '2.1.1'
    sha256 'cddc4a27c3c2a016f86d1688ef9708d3e8c605cfe06302470471309ccdc241db'
  else
    version '2.5'
    sha256 '2faf93330c2081a0108d9ed62f0b1bb91232177ef7ec696a4cb238a79419f634'
  end

  url "https://dl.apparentsoft.com/Trickster_#{version}.zip"
  appcast 'https://dl.apparentsoft.com/trickster.rss',
          checkpoint: '7042bbbf9643323bd899d6a996e32949c602f069b1bcc4d14043d1f8b5794f1f'
  name 'Trickster'
  homepage 'https://www.apparentsoft.com/trickster/'

  app 'Trickster.app'
end
