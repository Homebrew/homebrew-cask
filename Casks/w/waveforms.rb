cask "waveforms" do
  version "3.25.1"
  sha256 "84d213276e45309b4523e4ddf2fca76945402b06fb0794f0e849f803f73812cb"

  url "https://files.digilent.com/Software/Waveforms/#{version}/digilent.waveforms_v#{version}.dmg"
  name "WaveForms"
  desc "Virtual instrument suite for Digilent Test and Measurement devices"
  homepage "https://digilent.com/reference/software/waveforms/waveforms-3/start"

  livecheck do
    url "https://digilent.com/reference/software/waveforms/waveforms-#{version.major}/previous-versions"
    regex(/href=.*?digilent[._-]waveforms[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :monterey"

  app "WaveForms.app"

  zap trash: [
    "~/Library/Application Support/WaveForms",
    "~/Library/Saved Application State/com.digilent.waveforms.savedState",
  ]
end
