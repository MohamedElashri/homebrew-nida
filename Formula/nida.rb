class Nida < Formula
  desc "Small Go static site generator for blogs and personal sites"
  homepage "https://github.com/MohamedElashri/nida"
  version "0.8.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MohamedElashri/nida/releases/download/v0.8.3/nida_#{version}_darwin_arm64.tar.gz"
      sha256 "59929656044062d04cc67c6f10150425b68870006f28a1eb1cbb38a7b0415883"
    else
      url "https://github.com/MohamedElashri/nida/releases/download/v0.8.3/nida_#{version}_darwin_x86_64.tar.gz"
      sha256 "ba21f8be27ab5d75a05d7a78eddeb36a775d358acb4f8a770aafc228b462a97d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/MohamedElashri/nida/releases/download/v0.8.3/nida_#{version}_linux_arm64.tar.gz"
      sha256 "2628c44e88f0e73207b44860628e5e2a08b0fadd9b6467617ea66837334ee160"
    else
      url "https://github.com/MohamedElashri/nida/releases/download/v0.8.3/nida_#{version}_linux_x86_64.tar.gz"
      sha256 "bb991b922860a0ecefc17999cab3cac67a197df309dfac7ae6b44dd031c8eefe"
    end
  end

  def install
    bin.install "nida"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nida version")
  end
end
