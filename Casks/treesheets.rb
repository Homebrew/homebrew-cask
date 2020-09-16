cask "treesheets" do
  version :latest
  sha256 :no_check

  url "http://strlen.com/treesheets/treesheets_osx.zip"
  name "TreeSheets"
  desc "Open-source hierarchical spreadsheet and outline application"
  homepage "http://strlen.com/treesheets/"

  app "TreeSheetsBeta/TreeSheets.app"
end
