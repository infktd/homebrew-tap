class SniptCli < Formula
  desc "Cut once, paste forever. A fast snippet manager."
  homepage "https://github.com/infktd/snipt"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/infktd/snipt/releases/download/v0.1.0/snipt-macos-arm64.zip"
      sha256 "4901a36455628f998f949ad8286dadf6be630db7b72371d10ccb4b231f8516a2"
    end
    on_intel do
      url "https://github.com/infktd/snipt/releases/download/v0.1.0/snipt-macos-amd64.zip"
      sha256 "170041b73972edd73b058f8b272f0d3703b78d89675f4e6c8ec8fefb3aa54a91"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/infktd/snipt/releases/download/v0.1.0/snipt-linux-amd64.tar.gz"
      sha256 "cc37ac28bc544d5c9594462cc6c8651c79c00210a7209def818e00be7f37c6ab"
    end
  end

  def install
    if OS.mac?
      # Extract binary from .app bundle
      bin.install "snipt.app/Contents/MacOS/snipt"
    else
      bin.install "snipt"
    end
  end

  test do
    system "#{bin}/snipt", "--version"
  end
end
