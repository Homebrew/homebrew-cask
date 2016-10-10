cask 'ynab' do
  version '4.3.855'
  sha256 '05dd388122e49a131c76adf265620b2fafac589f9b92ad8b622720e0752a1eb6'

  url "https://www.youneedabudget.com/CDNOrigin/download/ynab4/liveCaptive/Mac/YNAB4_LiveCaptive_#{version}.dmg"
  name 'You Need A Budget'
  name 'YNAB'
  homepage 'https://www.youneedabudget.com/'

  app 'YNAB 4.app'
end
