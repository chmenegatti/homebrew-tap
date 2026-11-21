cask "zeno" do
  version "1.3.0"
  sha256 "9052b3c9680307d5d62b5d4d43d11c7be6d2b62312370bb61023433ab85dd28e"

  url "https://github.com/chmenegatti/zeno/releases/download/v#{version}/Zeno-#{version}-macos-universal.dmg"
  name "Zeno"
  desc "Tab-less, local-first API client (REST, GraphQL, gRPC, WebSocket)"
  homepage "https://www.cesarmenegatti.com/zeno/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Zeno.app"

  zap trash: "~/.local/share/zeno"

  caveats <<~EOS
    Zeno is not notarized by Apple yet. On first launch, open
    System Settings › Privacy & Security and click "Open Anyway".
  EOS
end
