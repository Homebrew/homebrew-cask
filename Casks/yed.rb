cask "yed" do
  version "3.20.1"
  sha256 "8cf3666b7c83dcd365ef1308ab8f5eeb53bea2405682ae9cae01a3cfd055ca98"

  url "https://www.yworks.com/resources/yed/demo/yEd-#{version}_with-JRE14.dmg"
  appcast "https://www.yworks.com/products/yed/download#download"
  name "yWorks yEd"
  homepage "https://www.yworks.com/products/yed"

  app "yEd.app"
end
