cask "homerun" do
  version "0.6.0"

  on_arm do
    url "https://github.com/aGallea/homerun/releases/download/v#{version}/HomeRun_#{version}_aarch64.dmg"
    sha256 "PLACEHOLDER_ARM64"
  end

  on_intel do
    url "https://github.com/aGallea/homerun/releases/download/v#{version}/HomeRun_#{version}_x64.dmg"
    sha256 "PLACEHOLDER_X86_64"
  end

  name "HomeRun"
  desc "Manage GitHub Actions self-hosted runners on macOS"
  homepage "https://github.com/aGallea/homerun"

  app "HomeRun.app"
end
