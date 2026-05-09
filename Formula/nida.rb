class Nida < Formula
  desc "Small Go static site generator for blogs and personal sites"
  homepage "https://github.com/MohamedElashri/nida"
  version "0.4.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MohamedElashri/nida/releases/download/v0.4.6/nida_#{version}_darwin_arm64.tar.gz"
      sha256 "e22ba0ece5ae7c3578ad6f7346296ac71142a9fef0deb8d92b6d0330ed59b2a1"
    else
      url "https://github.com/MohamedElashri/nida/releases/download/v0.4.6/nida_#{version}_darwin_x86_64.tar.gz"
      sha256 "224311076a02ab15fd42b729b37826ab5c2a2581065c9679f97c368347a5b842"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/MohamedElashri/nida/releases/download/v0.4.6/nida_#{version}_linux_arm64.tar.gz"
      sha256 "e8b2521a62581d7b2e513ff7d8d4d78d97132e102844ae9a0fdbda354518eda7"
    else
      url "https://github.com/MohamedElashri/nida/releases/download/v0.4.6/nida_#{version}_linux_x86_64.tar.gz"
      sha256 "8221bad24cb4af278e45a1ec645e9e3399101cc6136276c4a394812064eaa0bb"
    end
  end

  def install
    bin.install "nida"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nida version")
  end
end
