cask "homerun" do
  version "0.8.1"

  on_arm do
    url "https://github.com/aGallea/homerun/releases/download/v#{version}/HomeRun_#{version}_aarch64.dmg"
    sha256 "d0f6691d5990e57d6c2ab82d88f6c2d1399372bbf01260e1a7b2a716715c61fa"
  end

  on_intel do
    url "https://github.com/aGallea/homerun/releases/download/v#{version}/HomeRun_#{version}_x64.dmg"
    sha256 "1474218d6650b9bf520045101163d47da0e4cefc01ae626e05cbf63555827b0f"
  end

  name "HomeRun"
  desc "Manage GitHub Actions self-hosted runners on macOS"
  homepage "https://github.com/aGallea/homerun"

  app "HomeRun.app"
end
