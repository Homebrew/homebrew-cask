cask "trash-it" do
  version "7.5"
  sha256 :no_check

  url "https://nonamescriptware.com/wp-content/uploads/Trashit.zip"
  appcast "https://nonamescriptware.com/downloads/"
  name "Trash It!"
  desc "Tool to delete stuck trash"
  homepage "https://nonamescriptware.com/"

  app "Trash It! #{version}/Trash It!.app"
end
