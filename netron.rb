cask "netron" do
  version "6.6.4"
  sha256 "61ff2543a65340e4c1659dd54d4c84b77c747a2d2c43c0b1826208af8fc8ee71"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
