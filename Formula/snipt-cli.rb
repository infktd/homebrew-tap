class SniptCli < Formula
  desc "Cut once, paste forever. A fast snippet manager."
  homepage "https://github.com/infktd/snipt"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/infktd/snipt/releases/download/v0.1.1/snipt-macos-arm64.zip"
      sha256 "483fcac6728c056b853ae6cbb2d8d6b78f834fcf28fc1aa38cd92c5b9fd539cb"
    end
    on_intel do
      url "https://github.com/infktd/snipt/releases/download/v0.1.1/snipt-macos-amd64.zip"
      sha256 "9789ce7eefe33a1fc9ae80ea6fc2de8b2e5d68b0240b89f83f5296a9f6886042"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/infktd/snipt/releases/download/v0.1.1/snipt-linux-amd64.tar.gz"
      sha256 "f7fab05cb3d5c29ec0788cd5b6a5fb3e21ac5026ad3491d870bb82043768b448"
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
