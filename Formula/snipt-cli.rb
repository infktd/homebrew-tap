class SniptCli < Formula
  desc "Cut once, paste forever. A fast snippet manager."
  homepage "https://github.com/infktd/snipt"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/infktd/snipt/releases/download/v0.1.1/snipt-macos-arm64.zip"
      sha256 "098051ff7538eef293098a091c3d1797e0f715947f464e7b258d4e0a5bc961b7"
    end
    on_intel do
      url "https://github.com/infktd/snipt/releases/download/v0.1.1/snipt-macos-amd64.zip"
      sha256 "3d98e3aa6008e48d76c39e77f0200ccecc5a2f49f9c9079d9c4c3b23c55d38d7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/infktd/snipt/releases/download/v0.1.1/snipt-linux-amd64.tar.gz"
      sha256 "00b2127ae702a53374985501f92f2660456e9231f5e4e12eacdc67020b3b3af2"
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
