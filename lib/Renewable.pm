package Renewable;
use Mojo::Base 'Mojolicious';
use Models::Schema;

# This method will run once at server start
sub startup {
  my $self = shift;

  # Documentation browser under "/perldoc"
  $self->plugin('PODRenderer');

  # Router
  my $r = $self->routes;

  # Normal route to controller
  $r->namespaces(['Renewable::Controllers']);
  $r->route('/home')->to( 'home#welcome' );
  $r->route('/signup')->to( 'signup#add' );
  $r->route('/activity')->to( 'activity#index' );
  $r->route('/photogallery')->to( 'PhotoGallery#index' );
}

1;
