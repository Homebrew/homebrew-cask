cask 'ynab' do
  version '4.3.855'
  sha256 '05dd388122e49a131c76adf265620b2fafac589f9b92ad8b622720e0752a1eb6'

  url "https://classic.youneedabudget.com/CDNOrigin/download/ynab#{version.major}/liveCaptive/Mac/YNAB#{version.major}_LiveCaptive_#{version}.dmg"
  name 'You Need A Budget'
  name 'YNAB'
  homepage 'https://www.youneedabudget.com/'

  app "YNAB #{version.major}.app"
end
