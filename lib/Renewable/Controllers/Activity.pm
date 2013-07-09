package Renewable::Controllers::Activity;
use Mojo::Base 'Mojolicious::Controller';

use Encode qw(encode decode);

# This action will render a template
sub index {
  my $self = shift;
  
  my @articles = $self->app->schema->resultset('Article')->all;
 
  my $response_data = {};
  push @{ $response_data->{$_->type->id.'_'.encode( 'iso-8859-1', $_->type->type_name) } }, encode( 'iso-8859-1',$_->text ) foreach ( @articles );
 
 
 use Data::Dumper;
 warn Dumper($response_data);
  $self->render(
      response_data => $response_data,
      template => 'views/activity'
    );
}

1;