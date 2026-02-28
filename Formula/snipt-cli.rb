class SniptCli < Formula
  desc "Cut once, paste forever. A fast snippet manager."
  homepage "https://github.com/infktd/snipt"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/infktd/snipt/releases/latest/download/snipt-macos-arm64.zip"
      sha256 "PLACEHOLDER"
    end
    on_intel do
      url "https://github.com/infktd/snipt/releases/latest/download/snipt-macos-amd64.zip"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/infktd/snipt/releases/latest/download/snipt-linux-arm64.tar.gz"
      sha256 "PLACEHOLDER"
    end
    on_intel do
      url "https://github.com/infktd/snipt/releases/latest/download/snipt-linux-amd64.tar.gz"
      sha256 "PLACEHOLDER"
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
