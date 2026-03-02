cask "snipt" do
  version "0.1.1"

  arch arm: "arm64", intel: "amd64"
  sha256 arm:   "098051ff7538eef293098a091c3d1797e0f715947f464e7b258d4e0a5bc961b7",
         intel: "3d98e3aa6008e48d76c39e77f0200ccecc5a2f49f9c9079d9c4c3b23c55d38d7"

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
