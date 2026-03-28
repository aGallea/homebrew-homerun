cask "homerun" do
  version "0.7.0"

  on_arm do
    url "https://github.com/aGallea/homerun/releases/download/v#{version}/HomeRun_#{version}_aarch64.dmg"
    sha256 "2f5df1d4211985f9eb53736d659baeb19ca40e8847d9e7bf08ff265a1ad56536"
  end

  on_intel do
    url "https://github.com/aGallea/homerun/releases/download/v#{version}/HomeRun_#{version}_x64.dmg"
    sha256 "98e2437af0a8c2ea8b52ad0f0d84cf4bc189892bc7772c98740ae1faafd91ca0"
  end

  name "HomeRun"
  desc "Manage GitHub Actions self-hosted runners on macOS"
  homepage "https://github.com/aGallea/homerun"

  app "HomeRun.app"
end
