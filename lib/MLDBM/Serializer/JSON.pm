package MLDBM::Serializer::JSON;

use warnings;
use strict;
use vars qw($VERSION);

use JSON::Any;

=head1 NAME

MLDBM::Serializer::JSON - DBM serializer uses JSON for language interoperability

=cut

$VERSION = '0.001';

=head1 SYNOPSIS

    use MLDBM;

    my $foo = MLDBM::Serializer::JSON->new();
    ...

=head1 DESCRIPTION

=head1 SUBROUTINES/METHODS

=head2 serialize

serialize a given array into a json string

=cut

sub serialize {
    return JSON::Any->objToJson($_[1]);
}

=head2 deserialize

deserialize a json string into an array for MLDBM

=cut

sub deserialize {
    my ($obj) = JSON::Any->jsonToObj($_[1]);
    return $obj;
}

=head1 AUTHOR

Jens Rehsack, C<< <rehsack at cpan.org> >>

=head1 BUGS

Please report any bugs or feature requests to
C<bug-mldbm-serializer-json at rt.cpan.org>, or through the web interface
at L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=MLDBM-Serializer-JSON>.
I will be notified, and then you'll automatically be notified of progress
on your bug as I make changes.

=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc MLDBM::Serializer::JSON

You can also look for information at:

=over 4

=item * RT: CPAN's request tracker

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=MLDBM-Serializer-JSON>

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/MLDBM-Serializer-JSON>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/MLDBM-Serializer-JSON>

=item * Search CPAN

L<http://search.cpan.org/dist/MLDBM-Serializer-JSON/>

=back

=head1 LICENSE AND COPYRIGHT

Copyright 2010 Jens Rehsack.

This program is free software; you can redistribute it and/or modify it
under the terms of either: the GNU General Public License as published
by the Free Software Foundation; or the Artistic License.

See http://dev.perl.org/licenses/ for more information.

=cut

1; # End of MLDBM::Serializer::JSON
