cask "treesheets" do
  version "1.0,1"
  sha256 :no_check

  url "https://strlen.com/treesheets/treesheets_osx.zip"
  name "TreeSheets"
  desc "Hierarchical spreadsheet and outline application"
  homepage "http://strlen.com/treesheets/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "TreeSheetsBeta/TreeSheets.app"
end
