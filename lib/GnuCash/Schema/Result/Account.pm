use utf8;
package GnuCash::Schema::Result::Account;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

GnuCash::Schema::Result::Account

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 COMPONENTS LOADED

=over 4

=item * L<DBIx::Class::InflateColumn::DateTime>

=back

=cut

__PACKAGE__->load_components("InflateColumn::DateTime");

=head1 TABLE: C<accounts>

=cut

__PACKAGE__->table("accounts");

=head1 ACCESSORS

=head2 guid

  data_type: 'text'
  is_nullable: 0
  size: 32

=head2 name

  data_type: 'text'
  is_nullable: 0
  size: 2048

=head2 account_type

  data_type: 'text'
  is_nullable: 0
  size: 2048

=head2 commodity_guid

  data_type: 'text'
  is_nullable: 1
  size: 32

=head2 commodity_scu

  data_type: 'integer'
  is_nullable: 0

=head2 non_std_scu

  data_type: 'integer'
  is_nullable: 0

=head2 parent_guid

  data_type: 'text'
  is_nullable: 1
  size: 32

=head2 code

  data_type: 'text'
  is_nullable: 1
  size: 2048

=head2 description

  data_type: 'text'
  is_nullable: 1
  size: 2048

=head2 hidden

  data_type: 'integer'
  is_nullable: 1

=head2 placeholder

  data_type: 'integer'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "guid",
  { data_type => "text", is_nullable => 0, size => 32 },
  "name",
  { data_type => "text", is_nullable => 0, size => 2048 },
  "account_type",
  { data_type => "text", is_nullable => 0, size => 2048 },
  "commodity_guid",
  { data_type => "text", is_nullable => 1, size => 32 },
  "commodity_scu",
  { data_type => "integer", is_nullable => 0 },
  "non_std_scu",
  { data_type => "integer", is_nullable => 0 },
  "parent_guid",
  { data_type => "text", is_nullable => 1, size => 32 },
  "code",
  { data_type => "text", is_nullable => 1, size => 2048 },
  "description",
  { data_type => "text", is_nullable => 1, size => 2048 },
  "hidden",
  { data_type => "integer", is_nullable => 1 },
  "placeholder",
  { data_type => "integer", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</guid>

=back

=cut

__PACKAGE__->set_primary_key("guid");


# Created by DBIx::Class::Schema::Loader v0.07052 @ 2024-02-18 13:56:36
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:GeLwQWyP6SpYSlMASZDedw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
