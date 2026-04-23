cask "wavee" do
  arch arm: "aarch64", intel: "x64"

  version "1.0.0"
  sha256 arm:   "b442a03728149244628aca0bbf07b15147f2f7dfa83b85bde3f84ef95542b5fa",
         intel: "61cf31cef1a9de6198f399f8f95c37b23d8b2e97eafe004b50718e01f4235c52"

  url "https://github.com/Johuniq/wavee/releases/download/v#{version}/Wavee_#{version}_#{arch}.dmg"
  name "Wavee"
  desc "Wave your voice. Get text at your cursor"
  homepage "https://github.com/Johuniq/wavee"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Wavee.app"
end
