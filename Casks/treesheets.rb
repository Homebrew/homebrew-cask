cask "treesheets" do
  version "2022.08.02,20220802020630"
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
