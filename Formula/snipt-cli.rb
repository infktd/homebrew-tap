class SniptCli < Formula
  desc "Cut once, paste forever. A fast snippet manager."
  homepage "https://github.com/infktd/snipt"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/infktd/snipt/releases/download/v0.1.1/snipt-macos-arm64.zip"
      sha256 "89970eb2d437efbed7a97d0e98774d220a76f876b668767e5f5a3ff9af78e89c"
    end
    on_intel do
      url "https://github.com/infktd/snipt/releases/download/v0.1.1/snipt-macos-amd64.zip"
      sha256 "f2d04c916a90ba8d64416ed432cbae4939a82e58a23d2b445e6e0d24b964836b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/infktd/snipt/releases/download/v0.1.1/snipt-linux-amd64.tar.gz"
      sha256 "6edde3bda8512ebfd91a9392c2be31bbe1697ad8e98934b76948840ef7f20f85"
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
