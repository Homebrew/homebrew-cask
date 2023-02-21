cask "trash-it" do
  version "7.5"
  sha256 :no_check

  url "https://nonamescriptware.com/wp-content/uploads/Trashit.zip"
  name "Trash It!"
  desc "Tool to delete stuck trash"
  homepage "https://nonamescriptware.com/"

  livecheck do
    url "https://nonamescriptware.com/downloads/"
    regex(/Trash It!\s+(\d+(?:\.\d+)*)/)
  end

  app "Trash It! #{version}/Trash It!.app"
end
