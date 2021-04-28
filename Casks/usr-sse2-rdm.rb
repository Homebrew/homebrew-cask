cask "usr-sse2-rdm" do
  version "2.5.0"
  sha256 "9d583e43742018e45bad79c8af9e0accec6b6a10d94c60ac7d31721bbb3c237e"

  url "https://github.com/usr-sse2/RDM/releases/download/#{version}/RDM.zip"
  name "RDM"
  desc "Utility to set a Retina display to custom resolutions"
  homepage "https://github.com/usr-sse2/RDM"

  depends_on macos: ">= :sierra"

  app "RDM.app"

  uninstall quit:    "RDM",
            pkgutil: "net.alkalay.RDM"
end
