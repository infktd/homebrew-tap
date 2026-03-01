cask "snipt" do
  version "0.1.1"

  arch arm: "arm64", intel: "amd64"
  sha256 arm:   "89970eb2d437efbed7a97d0e98774d220a76f876b668767e5f5a3ff9af78e89c",
         intel: "f2d04c916a90ba8d64416ed432cbae4939a82e58a23d2b445e6e0d24b964836b"

  url "https://github.com/infktd/snipt/releases/download/v#{version}/snipt-macos-#{arch}.zip"
  name "snipt"
  desc "Cut once, paste forever. A fast snippet manager with GUI, CLI, and Gist sync."
  homepage "https://github.com/infktd/snipt"

  app "snipt.app"

  caveats <<~EOS
    snipt is not notarized. On first launch, macOS may block it.
    To fix this, run:
      xattr -cr /Applications/snipt.app
  EOS

  zap trash: [
    "~/.config/snipt",
    "~/Library/Application Support/snipt",
    "~/Library/LaunchAgents/com.infktd.snipt.plist",
  ]
end
