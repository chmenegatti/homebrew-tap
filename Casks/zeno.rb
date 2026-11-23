cask "zeno" do
  version "1.5.2"
  sha256 "d623c7ac7c077c75d7e104a54ff9a71a61e8c955cc8e2aa8c8d35ea885c31f00"

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
