cask "touchosc-editor" do
  version "1.8.9"
  sha256 "59e9992f29569b950dfeea397814e88cea5b45b1ed7ddaa8f748774ac6db6db7"

  url "https://hexler.net/pub/touchosc/touchosc-editor-#{version}-macos.zip"
  appcast "https://hexler.net/software/touchosc"
  name "TouchOSC Editor"
  homepage "https://hexler.net/software/touchosc"

  app "touchosc-editor-#{version}-macos/TouchOSC Editor.app"
  artifact "touchosc-editor-#{version}-macos/layouts",
           target: Pathname.new(File.expand_path("~")).join("Library/Application Support/TouchOSCEditor/layouts")

  zap trash: "~/Library/*/*TouchOSCEditor*"
end
