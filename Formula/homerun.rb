class Homerun < Formula
  desc "Manage GitHub Actions self-hosted runners on macOS"
  homepage "https://github.com/aGallea/homerun"
  version "0.6.0"
  license "MIT"

  on_arm do
    url "https://github.com/aGallea/homerun/releases/download/v#{version}/homerun-v#{version}-aarch64-apple-darwin.tar.gz"
    sha256 "PLACEHOLDER_ARM64"
  end

  on_intel do
    url "https://github.com/aGallea/homerun/releases/download/v#{version}/homerun-v#{version}-x86_64-apple-darwin.tar.gz"
    sha256 "PLACEHOLDER_X86_64"
  end

  def install
    bin.install "homerun"
    bin.install "homerund"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/homerun --version")
  end
end
