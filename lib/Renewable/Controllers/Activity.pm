package Renewable::Controllers::Activity;
use Mojo::Base 'Mojolicious::Controller';

# This action will render a template
sub index {
  my $self = shift;

  $self->render(
    template => 'views/activity');
}

1;