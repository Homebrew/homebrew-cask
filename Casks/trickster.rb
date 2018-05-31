cask 'trickster' do
  if MacOS.version <= :lion
    version '2.1.1'
    sha256 'cddc4a27c3c2a016f86d1688ef9708d3e8c605cfe06302470471309ccdc241db'
  else
    version '2.8'
    sha256 '4d2e4196e5baf7ace6e7258c867eae7e5310acb1de263c4bc631ae6a95e075b6'
  end

  url "https://dl.apparentsoft.com/Trickster_#{version}.zip"
  appcast 'https://dl.apparentsoft.com/trickster.rss',
          checkpoint: 'abf09bfbfcf986d4f984a83c6edb3cb9ad7cfff265b9f0804186c9179d5280c8'
  name 'Trickster'
  homepage 'https://www.apparentsoft.com/trickster/'

  depends_on macos: '>= :mountain_lion'

  app 'Trickster.app'
end
