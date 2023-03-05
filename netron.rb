cask "netron" do
  version "6.6.7"
  sha256 "b7c15a672e9ff62b12441511e2701e5dd57786fcf4a3d0daf4d550747f322d29"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
