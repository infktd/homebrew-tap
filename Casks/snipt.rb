cask "snipt" do
  version "0.1.1"

  arch arm: "arm64", intel: "amd64"
  sha256 arm:   "483fcac6728c056b853ae6cbb2d8d6b78f834fcf28fc1aa38cd92c5b9fd539cb",
         intel: "9789ce7eefe33a1fc9ae80ea6fc2de8b2e5d68b0240b89f83f5296a9f6886042"

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
