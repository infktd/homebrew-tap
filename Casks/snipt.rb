cask "snipt" do
  version "0.1.0"

  arch arm: "arm64", intel: "amd64"
  sha256 arm:   "4901a36455628f998f949ad8286dadf6be630db7b72371d10ccb4b231f8516a2",
         intel: "170041b73972edd73b058f8b272f0d3703b78d89675f4e6c8ec8fefb3aa54a91"

  url "https://github.com/infktd/snipt/releases/download/v#{version}/snipt-macos-#{arch}.zip"
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
