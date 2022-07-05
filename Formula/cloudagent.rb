# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cloudagent < Formula
  desc "The simple and easy-to-use program designed to watch user activity for Cloud Providers."
  homepage "http://github.com/pPrecel/cloudagent"
  version "0.4.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pPrecel/cloudagent/releases/download/v0.4.6/cloudagent_0.4.6_darwin_x86_64.tar.gz"
      sha256 "9e23c0aa8f870fe447c2ac9081f7dc9c57d7bc9351f196ada670bb381e649a2e"

      def install
        bin.install "cloudagent"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/pPrecel/cloudagent/releases/download/v0.4.6/cloudagent_0.4.6_darwin_arm64.tar.gz"
      sha256 "38b7ec38a31a0d134f5d4a1044045dbc9bc7205b2217f0958fb0d71edb5b4508"

      def install
        bin.install "cloudagent"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pPrecel/cloudagent/releases/download/v0.4.6/cloudagent_0.4.6_linux_arm64.tar.gz"
      sha256 "0d2be5d757c0acf2359dd520383099adde470e899023400a89df401ae9f207ba"

      def install
        bin.install "cloudagent"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pPrecel/cloudagent/releases/download/v0.4.6/cloudagent_0.4.6_linux_x86_64.tar.gz"
      sha256 "ad1c3f507af6c2b2fdbc7d3ef30d508593718efd6c3a0f4edc4190eaa40f9821"

      def install
        bin.install "cloudagent"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/pPrecel/cloudagent/releases/download/v0.4.6/cloudagent_0.4.6_linux_armv7.tar.gz"
      sha256 "4f3ab3b56f3a73a1248ce8eb9980024a04e399270fe595969ec16f9cfb15c57b"

      def install
        bin.install "cloudagent"
      end
    end
  end

  service do
    run ["#{opt_bin}/cloudagent", "serve"]
    log_path "/tmp/cloudagent/cloudagent.stdout"
    environment_variables PATH: "/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:"
    keep_alive true
  end

  test do
    system "#{bin}/cloudagent"
  end
end
