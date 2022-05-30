# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cloudagent < Formula
  desc "The simple and easy-to-use program designed to watch user activity for Cloud Providers."
  homepage "http://github.com/pPrecel/cloudagent"
  version "0.4.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pPrecel/cloudagent/releases/download/v0.4.4/cloudagent_0.4.4_darwin_x86_64.tar.gz"
      sha256 "df3aea30aa161014efa5c44629b6643756602dbc6f90fbf5c62ca1a41085ca12"

      def install
        bin.install "cloudagent"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/pPrecel/cloudagent/releases/download/v0.4.4/cloudagent_0.4.4_darwin_arm64.tar.gz"
      sha256 "6f2fa2bb95a9be3d4d3679d2335bd454f0f9cc55dac56cae43407af1764a8d25"

      def install
        bin.install "cloudagent"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pPrecel/cloudagent/releases/download/v0.4.4/cloudagent_0.4.4_linux_arm64.tar.gz"
      sha256 "73825fa2a9d46a1671c0344d4f6db6c510fca4a08b2eb986ba9e52f10a6c9689"

      def install
        bin.install "cloudagent"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/pPrecel/cloudagent/releases/download/v0.4.4/cloudagent_0.4.4_linux_armv7.tar.gz"
      sha256 "c0ea29cf427ff69117acd29d5d6e9031a6729391054a2f3d8df1b3f8107258bf"

      def install
        bin.install "cloudagent"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pPrecel/cloudagent/releases/download/v0.4.4/cloudagent_0.4.4_linux_x86_64.tar.gz"
      sha256 "f45d913f7585a5dddc44345bef7087fdfbcc9e4e6edd9df15b1883a5133eeeca"

      def install
        bin.install "cloudagent"
      end
    end
  end

  def post_install
    system "make", "bootstrap-config"
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
