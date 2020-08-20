cask "ynab" do
  version "4.3.855"
  sha256 "05dd388122e49a131c76adf265620b2fafac589f9b92ad8b622720e0752a1eb6"

  url "https://www-assets.youneedabudget.com/ynab4/YNAB4_LiveCaptive_#{version}.dmg"
  appcast "https://www.youneedabudget.com/dev/ynab4/liveCaptive/Mac/update.xml"
  name "You Need A Budget"
  name "YNAB"
  desc "You Need a Budget is an American multi-platform personal budgeting program"
  homepage "https://www.youneedabudget.com/"

  app "YNAB #{version.major}"
end
