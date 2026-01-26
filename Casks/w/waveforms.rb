cask "waveforms" do
  version "3.24.4"
  sha256 "832eb09e6926a76303423b21d950c0c45f18a5223de55935ac92654a891521f7"

  url "https://files.digilent.com/Software/Waveforms/#{version}/digilent.waveforms_v#{version}.dmg"
  name "WaveForms"
  desc "Virtual instrument suite for Digilent Test and Measurement devices"
  homepage "https://digilent.com/reference/software/waveforms/waveforms-3/start"

  livecheck do
    url "https://digilent.com/reference/software/waveforms/waveforms-#{version.major}/previous-versions"
    regex(/href=.*?digilent[._-]waveforms[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "WaveForms.app"

  zap trash: [
    "~/Library/Application Support/WaveForms",
    "~/Library/Saved Application State/com.digilent.waveforms.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
