cask "snipt" do
  arch arm: "arm64", intel: "amd64"

  url "https://github.com/infktd/snipt/releases/latest/download/snipt-macos-#{arch}.zip"
  name "snipt"
  desc "Cut once, paste forever. A fast snippet manager with GUI, CLI, and Gist sync."
  homepage "https://github.com/infktd/snipt"

  app "snipt.app"

  zap trash: [
    "~/.config/snipt",
    "~/Library/Application Support/snipt",
    "~/Library/LaunchAgents/com.infktd.snipt.plist",
  ]
end
