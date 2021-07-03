cask "xcresults" do
  version "1.10.0"
  sha256 "ad1a701f7e9614bb901324f323324af1e13f2d8b4bc85bd0e08f5125509b9802"

  url "https://github.com/eroshenkoam/xcresults/releases/download/#{version}/xcresults", verified: "https://github.com/eroshenkoam/xcresults/"
  name "xcresults"
  desc "A command line tool to extract test summaries & screenshots from Xcode 11 XCResult files."
  homepage "https://github.com/eroshenkoam/xcresults/"
end
