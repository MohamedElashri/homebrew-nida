class Nida < Formula
  desc "Small Go static site generator for blogs and personal sites"
  homepage "https://github.com/MohamedElashri/nida"
  version "0.5.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MohamedElashri/nida/releases/download/v0.5.7/nida_#{version}_darwin_arm64.tar.gz"
      sha256 "39da5330e07a5bc9fb9a718d52ba6142be16c0c3fb103c95274e9f0d69273134"
    else
      url "https://github.com/MohamedElashri/nida/releases/download/v0.5.7/nida_#{version}_darwin_x86_64.tar.gz"
      sha256 "0d39b06623535c2812b9eecbd60feebcef4236420bc150ddf4ea88fb47c817c2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/MohamedElashri/nida/releases/download/v0.5.7/nida_#{version}_linux_arm64.tar.gz"
      sha256 "8ccbffba55644f3170746b7a46d78f2f895595877e3f156cbec85b9d29737f3e"
    else
      url "https://github.com/MohamedElashri/nida/releases/download/v0.5.7/nida_#{version}_linux_x86_64.tar.gz"
      sha256 "3b8fea791080d8d4c5ecb6cad8c5dfe8d2c47feb29bfb31102a1a35ca0c62728"
    end
  end

  def install
    bin.install "nida"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nida version")
  end
end
