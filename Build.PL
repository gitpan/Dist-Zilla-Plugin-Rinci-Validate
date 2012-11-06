
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
  "dist_version" => "0.02",
  "license" => "perl",
  "module_name" => "Dist::Zilla::Plugin::Rinci::Validate",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
    "Data::Sah" => "0.08",
    "Dist::Zilla" => 0,
    "Log::Any" => 0,
    "Perinci::Access::InProcess" => "0.38"
  },
  "script_files" => []
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
