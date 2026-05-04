class Nida < Formula
  desc "Small Go static site generator for blogs and personal sites"
  homepage "https://github.com/MohamedElashri/nida"
  version "0.4.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MohamedElashri/nida/releases/download/v0.4.2/nida_#{version}_darwin_arm64.tar.gz"
      sha256 "50bf49f0df43dfc991e6f47e82eceea988e80704339b8a522d2dd309d46d65d5"
    else
      url "https://github.com/MohamedElashri/nida/releases/download/v0.4.2/nida_#{version}_darwin_x86_64.tar.gz"
      sha256 "6faf1e83f92595964cff97072ce348e145a3975f1f1e7b72b1aea6f064f084a3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/MohamedElashri/nida/releases/download/v0.4.2/nida_#{version}_linux_arm64.tar.gz"
      sha256 "61345eaf33fcac14cdb3a645c15614e83d7e4bfde0a80cacb8d2916029b89fa2"
    else
      url "https://github.com/MohamedElashri/nida/releases/download/v0.4.2/nida_#{version}_linux_x86_64.tar.gz"
      sha256 "3a38b95d3785339f38a0d9d6ffb2f3623fd17498cc04443cf58b8e993c66ab27"
    end
  end

  def install
    bin.install "nida"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nida version")
  end
end
