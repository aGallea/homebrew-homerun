class Homerun < Formula
  desc "Manage GitHub Actions self-hosted runners on macOS"
  homepage "https://github.com/aGallea/homerun"
  version "0.7.0"
  license "MIT"

  on_arm do
    url "https://github.com/aGallea/homerun/releases/download/v#{version}/homerun-v#{version}-aarch64-apple-darwin.tar.gz"
    sha256 "2b7a9f36c545eda9f1510336b7af852de9e4392a8cb9f16effecaf5873f160ad"
  end

  on_intel do
    url "https://github.com/aGallea/homerun/releases/download/v#{version}/homerun-v#{version}-x86_64-apple-darwin.tar.gz"
    sha256 "0283d821a7ad1e5dabd470764aff26982ef8019fa75250e4f9d93f2d3ef5e77b"
  end

  def install
    bin.install "homerun"
    bin.install "homerund"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/homerun --version")
  end
end
