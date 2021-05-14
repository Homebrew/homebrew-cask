cask "ticktick" do
  version "3.7.85,172"
  sha256 "a3b94360415738940a4a9adef2a42507c747ce2bb11f716accd646f6fb8b4c9f"

  url "https://appest-public.s3.amazonaws.com/download/mac/TickTick_#{version.before_comma}_#{version.after_comma}.dmg",
      verified: "appest-public.s3.amazonaws.com/"
  name "TickTick"
  desc "To-do & task list manager"
  homepage "https://www.ticktick.com/home"

  livecheck do
    url "https://www.ticktick.com/static/getApp/download?type=mac"
    strategy :header_match do |headers|
      match = headers["location"].match(%r{/TickTick_(\d+(?:\.\d+)*)_(\d+)\.dmg}i)
      "#{match[1]},#{match[2]}"
    end
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "TickTick.app"
end
