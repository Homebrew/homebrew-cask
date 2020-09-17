cask "trash-it" do
  version "7.5"
  sha256 "0d57f8f74587c012055b75b671bdfcd5739469ab1b371e317ee6df7e0c855c2b"

  url "https://nonamescriptware.com/wp-content/uploads/Trashit.zip"
  appcast "https://nonamescriptware.com/downloads/"
  name "Trash It!"
  desc "Tool to delete stuck trash"
  homepage "https://nonamescriptware.com/"

  app "Trash It! #{version}/Trash It!.app"
end
