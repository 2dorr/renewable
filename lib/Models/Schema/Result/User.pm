use utf8;
package Models::Schema::Result::User;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Models::Schema::Result::User

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<users>

=cut

__PACKAGE__->table("users");

=head1 ACCESSORS

=head2 userid

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 first_name

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 last_name

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 email

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 password

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 group

  data_type: 'integer'
  is_nullable: 1

=head2 year

  data_type: 'integer'
  is_nullable: 1

=head2 user_type

  data_type: 'varchar'
  is_nullable: 1
  size: 45

=cut

__PACKAGE__->add_columns(
  "userid",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "first_name",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "last_name",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "email",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "password",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "group",
  { data_type => "integer", is_nullable => 1 },
  "year",
  { data_type => "integer", is_nullable => 1 },
  "user_type",
  { data_type => "varchar", is_nullable => 1, size => 45 },
);

=head1 PRIMARY KEY

=over 4

=item * L</userid>

=back

=cut

__PACKAGE__->set_primary_key("userid");


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-07-10 01:00:18
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:mKOTRnjNPo0zhUKyUIY5Xg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
