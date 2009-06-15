use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'WWW::ItsABot',
    license             => 'perl',
    dist_author         => 'Jonathan Leto <jonathan@leto.net>',
    dist_version_from   => 'lib/WWW/ItsABot.pm',
    build_requires => {
        'Test::More' => 0,
    },
    requires => {
        'LWP::Simple' => 0,
    },
    add_to_cleanup      => [ 'WWW::ItsABot-*' ],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();
