use utf8;
package GnuCash::Schema::Result::BudgetAmount;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

GnuCash::Schema::Result::BudgetAmount

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

=head1 TABLE: C<budget_amounts>

=cut

__PACKAGE__->table("budget_amounts");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 budget_guid

  data_type: 'text'
  is_nullable: 0
  size: 32

=head2 account_guid

  data_type: 'text'
  is_nullable: 0
  size: 32

=head2 period_num

  data_type: 'integer'
  is_nullable: 0

=head2 amount_num

  data_type: 'bigint'
  is_nullable: 0

=head2 amount_denom

  data_type: 'bigint'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "budget_guid",
  { data_type => "text", is_nullable => 0, size => 32 },
  "account_guid",
  { data_type => "text", is_nullable => 0, size => 32 },
  "period_num",
  { data_type => "integer", is_nullable => 0 },
  "amount_num",
  { data_type => "bigint", is_nullable => 0 },
  "amount_denom",
  { data_type => "bigint", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07052 @ 2024-02-18 13:56:36
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:BdDxM3GAQhc9wnJEui567w


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
