#!/usr/bin/env perl
use utf8;
use strict;
use warnings;

use Path::Tiny;

my $src_dir = './src';
my $dst_dir = '.';
my @slides1 = qw/
  operating_system.md 
  xcode.md
  ubuntu_install.md
  terminal_and_shell.md
  editor.md
/;
my @slides2 = qw/
  title.md
  about_perl_entrance.md
  about_perl_language.md
  more_study.md
  build_perl.md
  hello_world.md
/;
my @slides = (@slides1, @slides2);

path("$dst_dir/slide1.md")->spew_utf8(read_md(@slides1));
path("$dst_dir/slide2.md")->spew_utf8(read_md(@slides2));
path("$dst_dir/slide.md")->spew_utf8(read_md(@slides1, @slides2));

sub read_md {
    my @slides = @_;

    my $slide
        = "<!-- このファイルは直接編集せずに src ディレクトリ内のファイルを編集し build.pl を実行してください。 -->\n";
    $slide .= join(
        "\n---\n",
        map {
        my $str = path("$src_dir/$_")->slurp_utf8;
        $str =~ s/\n(##? )/\n___\n$1/g;
        $str
        } @slides
    );
}
