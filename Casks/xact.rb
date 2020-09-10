cask "xact" do
  version "2.50"
  sha256 "ba56aeb49109894b202495309ab28080db3eb4aec67d5b9c03b580a73ee0e9d7"

  url "http://xact.scottcbrown.org/xACT#{version}.zip"
  appcast "http://xactupdate.scottcbrown.org/xACT.xml"
  name "xACT"
  desc "Suite of free packages for tensor computer algebra in the Wolfram Language"
  homepage "http://xact.scottcbrown.org/"

  app "xACT#{version}/xACT.app"
end
