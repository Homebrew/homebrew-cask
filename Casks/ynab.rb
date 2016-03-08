cask 'ynab' do
  version '4.3.817'
  sha256 '66ff8fd735b69fa16fe884f91913fd4ef867fb03980631bb7d32b18cf68e400a'

  url "https://www.youneedabudget.com/CDNOrigin/download/ynab4/liveCaptive/Mac/YNAB4_LiveCaptive_#{version}.dmg"
  name 'You Need A Budget'
  name 'YNAB'
  homepage 'https://www.youneedabudget.com/'
  license :commercial

  app 'YNAB 4.app'
end
