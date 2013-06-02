package Renewable::Controllers::PhotoGallery;
use Mojo::Base 'Mojolicious::Controller';

sub index {
  my $self = shift;

  $self->render(
    template => 'views/photogallery');
}

1;