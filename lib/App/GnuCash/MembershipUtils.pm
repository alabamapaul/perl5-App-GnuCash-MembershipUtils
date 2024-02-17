use strict;
use warnings;
package App::GnuCash::MembershipUtils;

## Version string
our $VERSION = qq{0.07};

##----------------------------------------------------------------------------
## :mode=perl:indentSize=2:tabSize=2:noTabs=true:
##****************************************************************************
## NOTES:
##  * Before comitting this file to the repository, ensure Perl Critic can be
##    invoked at the HARSH [3] level with no errors
##****************************************************************************

=head1 NAME

App::GnuCash::MembershipUtils - A group of perl modules and scripts to help in
using L<GnuCash|https://www.gnucash.org/> for membership.

=head1 DESCRIPTION

App::GnuCash::MembershipUtils is a group of perl modules and scripts to help in
using L<GnuCash|https://www.gnucash.org/> for membership.

It assumes all customers are members, and uses the customer "notes" field to 
determine what type of membership for each member / customer.

=head1 VERSION

Version 0.01

=head1 SYNOPSIS

    use App::GnuCash::MembershipUtils;

=cut

=begin Pod::Coverage
 
  SYNOPSIS
 
=end Pod::Coverage


1;
