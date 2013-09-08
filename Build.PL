
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  "build_requires" => {
    "Module::Build" => "0.3601"
  },
  "configure_requires" => {
    "Module::Build" => "0.3601"
  },
  "dist_abstract" => "Insert argument validator code in output code",
  "dist_author" => [
    "Steven Haryanto <stevenharyanto\@gmail.com>"
  ],
  "dist_name" => "Dist-Zilla-Plugin-Rinci-Validate",
  "dist_version" => "0.07",
  "license" => "perl",
  "module_name" => "Dist::Zilla::Plugin::Rinci::Validate",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
    "Data::Sah" => "0.10",
    "Dist::Zilla" => 0,
    "Log::Any" => 0,
    "Perinci::Access::Perl" => "0.38"
  },
  "script_files" => [],
  "test_requires" => {
    "Capture::Tiny" => 0,
    "Test::More" => "0.88",
    "blib" => 0
  }
);


unless ( eval { Module::Build->VERSION(0.4004) } ) {
  my $tr = delete $module_build_args{test_requires};
  my $br = $module_build_args{build_requires};
  for my $mod ( keys %$tr ) {
    if ( exists $br->{$mod} ) {
      $br->{$mod} = $tr->{$mod} if $tr->{$mod} > $br->{$mod};
    }
    else {
      $br->{$mod} = $tr->{$mod};
    }
  }
}

my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
