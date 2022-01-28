cask "webcamplus" do

    version "1.2.0"

    sha256 "50621515ff773b88930ffb2cfcd1511cf48cbf151672bd05bda37729b65ea509"
    
    url "https://github.com/WebcamPlus/WebcamPlus.github.io/releases/download/#{version}/WebcamPlus.Installer.#{version}.pkg"
    name "Webcam Plus"
    desc "Use your iPhone as a webcam for your Mac"
    homepage "https://webcamplus.app"

    pkg "WebcamPlus.Installer.#{version}.pkg"
end
