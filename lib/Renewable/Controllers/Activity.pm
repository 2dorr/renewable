package Renewable::Controllers::Activity;
use Mojo::Base 'Mojolicious::Controller';

use Encode qw(encode decode);

# This action will render a template
sub index {
  my $self = shift;
  
  my @articles = $self->app->schema->resultset('Article')->all;
 
  my $response_data = {};
  push @{ $response_data->{$_->type->id.'_'.$_->type->type_name} }, $_->text foreach ( @articles );
 
  $self->render(
      response_data => $response_data,
      template => 'views/activity'
    );
}

1;