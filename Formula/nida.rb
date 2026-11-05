class Nida < Formula
  desc "Small Go static site generator for blogs and personal sites"
  homepage "https://github.com/MohamedElashri/nida"
  version "0.8.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MohamedElashri/nida/releases/download/v0.8.4/nida_#{version}_darwin_arm64.tar.gz"
      sha256 "d808b27c6a6c782366a9a2446e0c703168aa8f8111b1ab5c730122a6a334d1bd"
    else
      url "https://github.com/MohamedElashri/nida/releases/download/v0.8.4/nida_#{version}_darwin_x86_64.tar.gz"
      sha256 "c8c89a35c9a4fb1f1cc7128d3ac867dd605ae02f6c71faac3c827492d5acf393"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/MohamedElashri/nida/releases/download/v0.8.4/nida_#{version}_linux_arm64.tar.gz"
      sha256 "b3fe39156c8a769c08ac18668ebf19e9d02d3fdc7ffdffaa368276eb88ac4753"
    else
      url "https://github.com/MohamedElashri/nida/releases/download/v0.8.4/nida_#{version}_linux_x86_64.tar.gz"
      sha256 "c84bd792414336e5dd47e6496e0884ed155d7461b288b7c74bd356544cc7ac3d"
    end
  end

  def install
    bin.install "nida"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nida version")
  end
end
