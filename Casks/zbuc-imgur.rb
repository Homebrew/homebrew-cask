cask "zbuc-imgur" do
  version :latest
  sha256 :no_check

  url "https://github.com/zbuc/imgurBar/raw/master/imgur.dmg"
  name "imgurBar"
  desc "Upload images to imgur from the menubar"
  homepage "https://github.com/zbuc/imgurBar"

  app "imgur.app"

  zap trash: "~/Library/Caches/com.zbuc.imgur"
end
