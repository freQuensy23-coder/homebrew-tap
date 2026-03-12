class ToonCli < Formula
  desc "Blazing-fast JSON-to-TOON converter"
  homepage "https://github.com/freQuensy23-coder/toon-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/freQuensy23-coder/toon-cli/releases/download/v0.1.0/toon-cli-macos-arm64"
      sha256 "4ac178bdf4e66257378a96b465dbe82d418fbc8f9cea55244ca6ebe08615d7ed"
    end
    on_intel do
      url "https://github.com/freQuensy23-coder/toon-cli/releases/download/v0.1.0/toon-cli-macos-amd64"
      sha256 "4520517613b41c6a6559dda5cd15171a07c40f8767d75230870f002ea7492309"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/freQuensy23-coder/toon-cli/releases/download/v0.1.0/toon-cli-linux-arm64"
      sha256 "b9047165eb97dbfbb07a5b211c81a9d49e7792a12a6e9ceaa2b5d3eaede4bd60"
    end
    on_intel do
      url "https://github.com/freQuensy23-coder/toon-cli/releases/download/v0.1.0/toon-cli-linux-amd64"
      sha256 "c3cca5ee3bd95a563e8c933054b921e65b2e7326ad1974e985b0a207d5f30ecf"
    end
  end

  def install
    bin.install stable.url.split("/").last => "toon-cli"
  end

  test do
    pipe_output("#{bin}/toon-cli", '{"a":1}', 0)
  end
end
