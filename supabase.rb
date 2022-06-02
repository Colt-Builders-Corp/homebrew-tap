# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Supabase < Formula
  desc "Supabase CLI"
  homepage "https://supabase.io"
  version "0.26.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/supabase/cli/releases/download/v0.26.1/supabase_0.26.1_darwin_amd64.tar.gz"
      sha256 "aa1b68aacf88a05b9251c52aa42c8c6f62c7e7dbe526619f04de9c82c6ddd5e2"

      def install
        bin.install "supabase"
        (bash_completion/"supabase").write `#{bin}/supabase completion bash`
        (fish_completion/"supabase.fish").write `#{bin}/supabase completion fish`
        (zsh_completion/"_supabase").write `#{bin}/supabase completion zsh`
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v0.26.1/supabase_0.26.1_darwin_arm64.tar.gz"
      sha256 "f5da3191b7943f2de83ec2e95f171ab6d4c1e14142b5b4f4359216601e6202f1"

      def install
        bin.install "supabase"
        (bash_completion/"supabase").write `#{bin}/supabase completion bash`
        (fish_completion/"supabase.fish").write `#{bin}/supabase completion fish`
        (zsh_completion/"_supabase").write `#{bin}/supabase completion zsh`
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/supabase/cli/releases/download/v0.26.1/supabase_0.26.1_linux_arm64.tar.gz"
      sha256 "12ceb2f0a68948393d4106b9249857464a838b4d34f5f19ea44e2857c492e8ad"

      def install
        bin.install "supabase"
        (bash_completion/"supabase").write `#{bin}/supabase completion bash`
        (fish_completion/"supabase.fish").write `#{bin}/supabase completion fish`
        (zsh_completion/"_supabase").write `#{bin}/supabase completion zsh`
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/supabase/cli/releases/download/v0.26.1/supabase_0.26.1_linux_amd64.tar.gz"
      sha256 "8f87d49cfbe658ae4a67e8555f803f7ba3053289c41ae8e8b2aab2cb891d9660"

      def install
        bin.install "supabase"
        (bash_completion/"supabase").write `#{bin}/supabase completion bash`
        (fish_completion/"supabase.fish").write `#{bin}/supabase completion fish`
        (zsh_completion/"_supabase").write `#{bin}/supabase completion zsh`
      end
    end
  end
end
