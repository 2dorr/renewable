package Renewable::Controllers::Contact;
use Mojo::Base 'Mojolicious::Controller';

# This action will render a template
sub index {
  my $self = shift;

  $self->render(
    template => 'views/contact');
}

1;
