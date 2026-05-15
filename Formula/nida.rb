class Nida < Formula
  desc "Small Go static site generator for blogs and personal sites"
  homepage "https://github.com/MohamedElashri/nida"
  version "0.5.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MohamedElashri/nida/releases/download/v0.5.1/nida_#{version}_darwin_arm64.tar.gz"
      sha256 "ba50551f89a39e11a391d85eec9bbd674c7ff7a9af488ea392fe3ca61ae659cd"
    else
      url "https://github.com/MohamedElashri/nida/releases/download/v0.5.1/nida_#{version}_darwin_x86_64.tar.gz"
      sha256 "695f83c03d71f71ac425d8f0e957ca81efbb50d0b7d25823b07a7d3cfe3fbbd4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/MohamedElashri/nida/releases/download/v0.5.1/nida_#{version}_linux_arm64.tar.gz"
      sha256 "f77526380e7f6c67069aa279e8ba016d5ecce08eefa4605f414248d16e96e4f6"
    else
      url "https://github.com/MohamedElashri/nida/releases/download/v0.5.1/nida_#{version}_linux_x86_64.tar.gz"
      sha256 "01630042d2ba5cba2a9cb608888e161d7c89f13a3480b81c659444d5c9c99261"
    end
  end

  def install
    bin.install "nida"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nida version")
  end
end
