use utf8;
package Models::Schema::Result::ArticleType;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Models::Schema::Result::ArticleType

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<article_type>

=cut

__PACKAGE__->table("article_type");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 type_name

  data_type: 'varchar'
  is_nullable: 0
  size: 45

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "type_name",
  { data_type => "varchar", is_nullable => 0, size => 45 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-07-10 01:00:18
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:1zSYRlviSbAZAmH3JoRPFA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
