use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'MLDBM::Serializer::JSON',
    license             => 'perl',
    dist_author         => q{Jens Rehsack <rehsack@cpan.org>},
    dist_version_from   => 'lib/MLDBM/Serializer/JSON.pm',
        requires          => {
	    'MLDBM' => '2.00',
	    'JSON::Any' => '1.22',
	},
        recommends          => {
	    'MLDBM' => '2.04',
	},
    build_requires => {
        'Test::More' => 0.90,
    },
    add_to_cleanup      => [ 'MLDBM-Serializer-JSON-*' ],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();
