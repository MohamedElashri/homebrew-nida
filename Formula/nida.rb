class Nida < Formula
  desc "Small Go static site generator for blogs and personal sites"
  homepage "https://github.com/MohamedElashri/nida"
  version "0.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MohamedElashri/nida/releases/download/v0.6.0/nida_#{version}_darwin_arm64.tar.gz"
      sha256 "6758ee1f35efe23c5a56d1e76ca317c3d9313a4952f3b25c7c3b41f46f008495"
    else
      url "https://github.com/MohamedElashri/nida/releases/download/v0.6.0/nida_#{version}_darwin_x86_64.tar.gz"
      sha256 "b72ef5295bf2a9c30dc3fae07a641acd3127a3c6da51803527c50e7ec7da0281"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/MohamedElashri/nida/releases/download/v0.6.0/nida_#{version}_linux_arm64.tar.gz"
      sha256 "009e38d0a236ccee4d966acf7f95a720d67fd1c69f7539d5f9ec621afb7cd28c"
    else
      url "https://github.com/MohamedElashri/nida/releases/download/v0.6.0/nida_#{version}_linux_x86_64.tar.gz"
      sha256 "d3178566e8d9c3e9bbbe1d939faf65854917da8a89bbc1669911c0ba64964769"
    end
  end

  def install
    bin.install "nida"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nida version")
  end
end
