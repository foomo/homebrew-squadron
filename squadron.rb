# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Squadron < Formula
  desc "CLI utility manage infrastructure as code with helm"
  homepage "https://github.com/foomo/squadron"
  version "2.0.0-rc.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/foomo/squadron/releases/download/v2.0.0-rc.3/squadron_2.0.0-rc.3_darwin_arm64.tar.gz"
      sha256 "9824358423933bc7eda7bf2a6874fa88620c03d438b3d9a7893af052df6c171b"

      def install
        bin.install "squadron"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/foomo/squadron/releases/download/v2.0.0-rc.3/squadron_2.0.0-rc.3_darwin_amd64.tar.gz"
      sha256 "dfe67f46c3ce1d38eb5edff296e19714a5aa4501aa1449fbb4d475bed6ad3f05"

      def install
        bin.install "squadron"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/foomo/squadron/releases/download/v2.0.0-rc.3/squadron_2.0.0-rc.3_linux_amd64.tar.gz"
      sha256 "ba9fb0a9d5426b1fe218f1deff12ddc51b86b19085c3b76e530d1f65d32ad596"

      def install
        bin.install "squadron"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/foomo/squadron/releases/download/v2.0.0-rc.3/squadron_2.0.0-rc.3_linux_arm64.tar.gz"
      sha256 "1acdd2b88009fbaa54ef138bb74dcde0b266238afed457d6d2b650e95014d3f8"

      def install
        bin.install "squadron"
      end
    end
  end

  def caveats
    <<~EOS
      squadron -h
    EOS
  end
end
