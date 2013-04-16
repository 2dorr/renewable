package Renewable::Controllers::Home;
use Mojo::Base 'Mojolicious::Controller';

# This action will render a template
sub welcome {
  my $self = shift;

  $self->render(
    template => 'views/home');
}

1;
